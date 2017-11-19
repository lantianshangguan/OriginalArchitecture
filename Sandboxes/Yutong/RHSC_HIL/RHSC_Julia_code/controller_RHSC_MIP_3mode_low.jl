#!/usr/bin/env julia
#

using JuMP
using RobotOS
using Mosek
@rosimport geometry_msgs.msg: Twist, Point
rostypegen()
using geometry_msgs.msg

# define model parameters
lf = 1.11 # distance from CoG to front axel
lr = 2.7762 - lf # distance from CoG to rear axel
T_s = 0.05 # time step of system
m = 1370 # vehicle mass
vx = 13 # vehicle longitudinal speed
Iz = 4192 # inertia
C_f1 = -9.372*10^4*0.5477
C_r1 = -9.406*10^4*0.5477
C_f2 = -2.6908*10^3
C_r2 = -3.6596*10^3
C_f3 = C_f2
C_r3 = C_r2
bf1 = 0
br1 = 0
bf2 = 8.3285*10^3*0.3
br2 = 6.4448*10^3*0.3
bf3 = -bf2
br3 = -br2
thre_f = 0.093*0.5477
thre_r = 0.071*0.5477
A11 = [1 T_s T_s*vx 0;
       0 (C_f1 + C_r1)/m/vx*T_s + 1 0 ((C_f1*lf - C_r1*lr)/m/vx - vx)*T_s;
       0 0 1 T_s;
       0 (C_f1*lf - C_r1*lr)/Iz/vx*T_s 0 (C_f1*lf^2 + C_r1*lr^2)/Iz/vx*T_s + 1]

A12 = [1 T_s T_s*vx 0;
       0 (C_f1 + C_r2)/m/vx*T_s + 1 0 ((C_f1*lf - C_r2*lr)/m/vx - vx)*T_s;
       0 0 1 T_s;
       0 (C_f1*lf - C_r2*lr)/Iz/vx*T_s 0 (C_f1*lf^2 + C_r2*lr^2)/Iz/vx*T_s + 1]

A13 = [1 T_s T_s*vx 0;
       0 (C_f1 + C_r3)/m/vx*T_s + 1 0 ((C_f1*lf - C_r3*lr)/m/vx - vx)*T_s;
       0 0 1 T_s;
       0 (C_f1*lf - C_r3*lr)/Iz/vx*T_s 0 (C_f1*lf^2 + C_r3*lr^2)/Iz/vx*T_s + 1]


B11 = [0;
       -C_f1/m*T_s;
       0;
       -lf*C_f1/Iz*T_s]

B12 = [0;
      -C_f1/m*T_s;
       0;
       -lf*C_f1/Iz*T_s]

B13 = [0;
      -C_f1/m*T_s;
       0;
       -lf*C_f1/Iz*T_s]

f11 = [0;
       T_s*(bf1 + br1)/m;
       0;
       T_s*(lf*bf1 - lr*br1)/Iz]

f12 = [0;
       T_s*(bf1 + br2)/m;
       0;
       T_s*(lf*bf1 - lr*br2)/Iz]

f13 = [0;
       T_s*(bf1 + br3)/m;
       0;
       T_s*(lf*bf1 - lr*br3)/Iz]


rou1 = 0.85
rou2 = 0.85
big_M = 1*[20,10,1,1]
small_M = -1*[20,10,1,1]
big_M1 = 1
small_M1 = -1
# preview horizon
N = 4
# define state, input and output varible number
nx = 4
nu = 1
ny = 2
# define decision variables
# states: position (x,y), yaw angle, and velocity
# inputs: acceleration, steering angle
println("Creating kinematic bicycle model ....")
mdl = Model(solver = MosekSolver())
#mdl = Model(solver = GurobiSolver())
@defVar( mdl, x[1:nx,1:(N+1)] )
@defVar( mdl, u[1:nu,1:(N+1)] )
@defVar( mdl, y[1:ny,1:(N+1)] )
@defVar( mdl, d[1:3,1:N] ,Bin)
@defVar( mdl, alfa_f[1:1,1:N] )
@defVar( mdl, alfa_r[1:1,1:N] )
@defVar( mdl, s1[1:1,1:N] )
@defVar( mdl, s2[1:1,1:N] )
@defVar( mdl, x1_ref[1:1,1:1] )
@defVar( mdl, x3_ref[1:1,1:1] )
@defVar( mdl, oldu[1:1,1:1] )
@defVar( mdl, soft_f[1:1,1:N] )
@defVar( mdl, soft_r[1:1,1:N] )
#@defVar( mdl, temp[1:nx,1:N])
# define constraints
# define system dynamics
# Reference: R.Rajamani, Vehicle Dynamics and Control, set. Mechanical Engineering Series,
# Spring, 2011, page 26

@variable(mdl, Y0 == 0)
@addConstraint(mdl, x[1,1] == Y0)

@variable(mdl, vy0 == 0)
@addConstraint(mdl, x[2,1] == vy0)

@variable(mdl, psi0 == 0)
@addConstraint(mdl, x[3,1] == psi0 )

@variable(mdl, dpsi0 == 0)
@addConstraint(mdl, x[4,1] == dpsi0)

@variable(mdl, x1_ref0 == 0)
@addConstraint(mdl, x1_ref[1,1] == x1_ref0)

@variable(mdl, x3_ref0 == 0)
@addConstraint(mdl, x3_ref[1,1] == x3_ref0)

@variable(mdl, Pre_u0 == 0)
@addConstraint(mdl, oldu[1,1] == Pre_u0)


for i=1:N# in [1:N]

@addConstraint( mdl, alfa_f[:,i] .== (x[2,i] + lf*x[4,i])/vx - u[i] )
@addConstraint( mdl, alfa_r[:,i] .== (x[2,i] - lr*x[4,i])/vx )


@addConstraint(mdl, alfa_r[:,i] .<= thre_r + big_M1*(1-d[1,i]))
@addConstraint(mdl, -thre_r + small_M1*(1-d[1,i]) .<= alfa_r[:,i] )

@addConstraint(mdl, alfa_r[:,i] .<= -thre_r + (1-d[2,i])*big_M1)

@addConstraint(mdl, thre_r + (1-d[3,i])*small_M1 .<= alfa_r[:,i])


@addConstraint(mdl,(1-d[1,i])*small_M .<= x[:,i+1] - A11*x[:,i] - B11*u[i] -f11 )
@addConstraint(mdl, x[:,i+1] - A11*x[:,i] - B11*u[i] -f11 .<= (1-d[1,i])*big_M )

@addConstraint(mdl,(1-d[2,i])*small_M .<= x[:,i+1] - A12*x[:,i] - B12*u[i] -f12 )
@addConstraint(mdl, x[:,i+1] - A12*x[:,i] - B12*u[i] -f12 .<= (1-d[2,i])*big_M )

@addConstraint(mdl,(1-d[3,i])*small_M .<= x[:,i+1] - A13*x[:,i] - B13*u[i] -f13 )
@addConstraint(mdl, x[:,i+1] - A13*x[:,i] - B13*u[i] -f13 .<= (1-d[3,i])*big_M )

@addConstraint(mdl, sum{d[l,i], l=1:3} == 1)

@addConstraint(mdl, s1[:,i] .== (x[1,i+1] - x1_ref[1,1]) - rou1*(x[1,i] - x1_ref[1,1]))
@addConstraint(mdl, s2[:,i] .== (x[3,i+1] - x3_ref[1,1]) - rou2*(x[3,i] - x3_ref[1,1]))

@addConstraint(mdl,  -0.15 <= u[i] <= 0.15)
@addConstraint(mdl,  -0.01*T_s <= u[i+1] - u[i] <= 0.01*T_s)
@addConstraint(mdl,  -1.4*T_s <= u[1] - oldu[1,1] <= 1.4*T_s)
#@addConstraint(mdl,  -thre_f - soft_f[1,i] .<= alfa_f[:,i] )
#@addConstraint(mdl,    alfa_f[:,i] .<= thre_f + soft_f[1,i])
#@addConstraint(mdl,  -thre_r - soft_r[1,i] .<= alfa_r[:,i] )
#@addConstraint(mdl,    alfa_r[:,i] .<= thre_r + soft_r[1,i])

end
# define objective function
@setObjective(mdl, Min, sum{(s1[1,j]^2),j=1:N}+50*sum{(s2[1,j]^2),j=1:N} )#+100000*sum{(soft_f[1,j]^2),j=1:N} +100000*sum{(soft_r[1,j]^2),j=1:N}
# status update
println("initial solve ...")
solve(mdl)
println("finished initial solve!")

function RHSC_callback(veh_msg::Twist)
    # update RHSC initial condition

    setValue(Y0,    veh_msg.linear.x)
    setValue(vy0,   veh_msg.linear.y)
    setValue(psi0,  veh_msg.angular.z)
    setValue(dpsi0, veh_msg.angular.y)
    setValue(x1_ref0,  veh_msg.linear.z)
    setValue(x3_ref0, veh_msg.angular.x)

end

function u_callback(msg::Twist)
    # update RHSC initial condition

    setValue(Pre_u0,    msg.linear.x)

end

function main()
    # initiate node, set up publisher / subscriber topics
    init_node("RHSC")
    pub = Publisher("RHSC_cmd", Twist, queue_size=10)
    sub  = Subscriber("veh_state", Twist, RHSC_callback, queue_size=10)
    sub = Subscriber("old_u", Twist, u_callback, queue_size=10)

    loop_rate = Rate(20.0)

    while ! is_shutdown()
        # run RHSC, publish command
        tic()
        solve(mdl)

        # get optimal solutions
        u_RHSC = getValue(u[1])
        cmd = Twist();
        println(getValue(Y0))
        cmd.linear.x = u_RHSC;
        t_RHSC = toc()
        cmd.linear.y = t_RHSC;

        # publish commands
        rossleep(0.05 - t_RHSC)
        publish(pub, cmd)

    end
end

if ! isinteractive()
    main()
end
