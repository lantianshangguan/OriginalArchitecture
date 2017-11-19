function RHSC_out = RHSC(ya, va, psia, dpsia, oldu, yd, psid)

% currentIndex = prevSituation.wP.currentWayPointIndex;
% if currentIndex < 1
%     currentIndex = uint16(1);
% end
% finalIndex = prevSituation.wP.finalWayPointIndex;
%
% xd = prevSituation.wP.wayPointArray(currentIndex).x;
% yd = prevSituation.wP.wayPointArray(currentIndex).y;
% xa = prevSituation.selfAwarenessBus.x;
% ya = prevSituation.selfAwarenessBus.y;
% va = prevSituation.selfAwarenessBus.v;
% psia = prevSituation.selfAwarenessBus.psi;
% dpsia = prevSituation.selfAwarenessBus.dpsi;
% oldu = preRHSCAction.RHSC_steering_cmd;

persistent controller N aa

% if t == 0
if isempty(aa)
    aa = 1;
    
    rou = 0.7;
    
    % optimization problem parameters
    N = 6;%prediction horizon
    T_s = 0.025;%sampling time
    nx = 4;% number of state varibles
    nu = 1;% number of inputs
    
    
    
    yalmip('clear');
    % optimization varibles define
    uvar = sdpvar(repmat(nu,1,N+1),repmat(1,1,N+1));
    xvar = sdpvar(repmat(nx,1,N+1),repmat(1,1,N+1));
    
    alfa_f = sdpvar(repmat(1,1,N),repmat(1,1,N));
    alfa_r = sdpvar(repmat(1,1,N),repmat(1,1,N));
    
    Y_tgt = sdpvar(N+1,1);
    yaw_angle_tgt = sdpvar(N+1,1);
    pastu = sdpvar(1);
    
    s = sdpvar(repmat(1,1,N),repmat(1,1,N));
    
    % system dynamics parameters
    lf = 1.11;
    lr = 2.7762 - lf;
    m = 1370*1.6;
    Iz = 4192*0.3;
    vx = 13;
    % low miu
%     C_f1 = -9.372*10^4*0.5477;
%     C_r1 = -9.406*10^4*0.5477;
%     C_f2 = -2.6908*10^3;
%     C_r2 = -3.6596*10^3;
%     C_f3 = C_f2;
%     C_r3 = C_r2;
%     bf1 = 0;
%     br1 = 0;
%     bf2 = 8.3285*10^3;
%     br2 = 6.4448*10^3;
%     bf3 = -bf2;
%     br3 = -br2;
%     f_thre = 0.093;
%     r_thre = 0.071;
    % high miu
    C_f1 = -9.372*10^4;
    C_r1 = -9.406*10^4;
    C_f2 = -2.6908*10^3;
    C_r2 = -3.6596*10^3;
    C_f3 = C_f2;
    C_r3 = C_r2;
    bf1 = 0;
    br1 = 0;
    bf2 = 8.3285*10^3;
    br2 = 6.4448*10^3;
    bf3 = -bf2;
    br3 = -br2;
    f_thre = 0.093;
    r_thre = 0.071;
    
    
    
    
    A11 = [1,T_s,T_s*vx,0;
        0,(C_f1+C_r1)/m/vx*T_s+1,0,((C_f1*lf-C_r1*lr)/m/vx-vx)*T_s;
        0,0,1,T_s;
        0,(C_f1*lf-C_r1*lr)/Iz/vx*T_s,0,(C_f1*lf^2+C_r1*lr^2)/Iz/vx*T_s+1];
    
    A12 = [1,T_s,T_s*vx,0;
        0,(C_f1+C_r2)/m/vx*T_s+1,0,((C_f1*lf-C_r2*lr)/m/vx-vx)*T_s;
        0,0,1,T_s;
        0,(C_f1*lf-C_r2*lr)/Iz/vx*T_s,0,(C_f1*lf^2+C_r2*lr^2)/Iz/vx*T_s+1];
    
    A13 = [1,T_s,T_s*vx,0;
        0,(C_f1+C_r3)/m/vx*T_s+1,0,((C_f1*lf-C_r3*lr)/m/vx-vx)*T_s;
        0,0,1,T_s;
        0,(C_f1*lf-C_r3*lr)/Iz/vx*T_s,0,(C_f1*lf^2+C_r3*lr^2)/Iz/vx*T_s+1];
    
    A21 = [1,T_s,T_s*vx,0;
        0,(C_f2+C_r1)/m/vx*T_s+1,0,((C_f2*lf-C_r1*lr)/m/vx-vx)*T_s;
        0,0,1,T_s;
        0,(C_f2*lf-C_r1*lr)/Iz/vx*T_s,0,(C_f2*lf^2+C_r1*lr^2)/Iz/vx*T_s+1];
    
    A22 = [1,T_s,T_s*vx,0;
        0,(C_f2+C_r2)/m/vx*T_s+1,0,((C_f2*lf-C_r2*lr)/m/vx-vx)*T_s;
        0,0,1,T_s;
        0,(C_f2*lf-C_r2*lr)/Iz/vx*T_s,0,(C_f2*lf^2+C_r2*lr^2)/Iz/vx*T_s+1];
    
    A23 = [1,T_s,T_s*vx,0;
        0,(C_f2+C_r3)/m/vx*T_s+1,0,((C_f2*lf-C_r3*lr)/m/vx-vx)*T_s;
        0,0,1,T_s;
        0,(C_f2*lf-C_r3*lr)/Iz/vx*T_s,0,(C_f2*lf^2+C_r3*lr^2)/Iz/vx*T_s+1];
    
    A31 = [1,T_s,T_s*vx,0;
        0,(C_f3+C_r1)/m/vx*T_s+1,0,((C_f3*lf-C_r1*lr)/m/vx-vx)*T_s;
        0,0,1,T_s;
        0,(C_f3*lf-C_r1*lr)/Iz/vx*T_s,0,(C_f3*lf^2+C_r1*lr^2)/Iz/vx*T_s+1];
    
    A32 = [1,T_s,T_s*vx,0;
        0,(C_f3+C_r2)/m/vx*T_s+1,0,((C_f3*lf-C_r2*lr)/m/vx-vx)*T_s;
        0,0,1,T_s;
        0,(C_f3*lf-C_r2*lr)/Iz/vx*T_s,0,(C_f3*lf^2+C_r2*lr^2)/Iz/vx*T_s+1];
    
    A33 = [1,T_s,T_s*vx,0;
        0,(C_f3+C_r3)/m/vx*T_s+1,0,((C_f3*lf-C_r3*lr)/m/vx-vx)*T_s;
        0,0,1,T_s;
        0,(C_f3*lf-C_r3*lr)/Iz/vx*T_s,0,(C_f3*lf^2+C_r3*lr^2)/Iz/vx*T_s+1];
    
    B1 = [0;
        -C_f1/m*T_s;
        0;
        -lf*C_f1/Iz*T_s];
    
    B2 = [0;
        -C_f2/m*T_s;
        0;
        -lf*C_f2/Iz*T_s];
    
    B3 = [0;
        -C_f3/m*T_s;
        0;
        -lf*C_f3/Iz*T_s];
    
    f11 = [0;
        T_s*(bf1+br1)/m;
        0;
        T_s*(lf*bf1-lr*br1)/Iz];
    
    f12 = [0;
        T_s*(bf1+br2)/m;
        0;
        T_s*(lf*bf1-lr*br2)/Iz];
    
    f13 = [0;
        T_s*(bf1+br3)/m;
        0;
        T_s*(lf*bf1-lr*br3)/Iz];
    
    f21 = [0;
        T_s*(bf2+br1)/m;
        0;
        T_s*(lf*bf2-lr*br1)/Iz];
    
    f22 = [0;
        T_s*(bf2+br2)/m;
        0;
        T_s*(lf*bf2-lr*br2)/Iz];
    
    f23 = [0;
        T_s*(bf2+br3)/m;
        0;
        T_s*(lf*bf2-lr*br3)/Iz];
    
    f31 = [0;
        T_s*(bf3+br1)/m;
        0;
        T_s*(lf*bf3-lr*br1)/Iz];
    
    f32 = [0;
        T_s*(bf3+br2)/m;
        0;
        T_s*(lf*bf3-lr*br2)/Iz];
    
    f33 = [0;
        T_s*(bf3+br3)/m;
        0;
        T_s*(lf*bf3-lr*br3)/Iz];
    
    % problem formulation
    constraints=[];
    objective=0;
    
    for k=1:N
        
        alfa_f{k} = (xvar{k}(2)+lf*xvar{k}(4))/vx-uvar{k};
        
        alfa_r{k} = (xvar{k}(2)-lr*xvar{k}(4))/vx;
        
        s{k} = (xvar{k+1}(1)-Y_tgt(k+1))- rou*(xvar{k}(1)-Y_tgt(k));
        
        s1{k} = (xvar{k+1}(3)-yaw_angle_tgt(k+1))- rou*(xvar{k}(3)-yaw_angle_tgt(k));
        
        objective = objective + (s{k})^2 + 50*(s1{k})^2;
        
        constraints = [constraints,-0.15 <= uvar{k} <= 0.15];
        
%         constraints = [constraints,-15*0.025 <= uvar{k+1} -uvar{k} <= 1.5*0.025];
        
        constraints = [constraints,xvar{k+1} == A11*xvar{k} + B1*uvar{k} + f11];
        
        
    end
    
    parameters_in = {xvar{1},Y_tgt,yaw_angle_tgt,pastu};
    
    solutions_out = [uvar{1}];
    
    controller = optimizer(constraints,objective,[],parameters_in,solutions_out);
    
    RHSC_out = controller{{[ya;va;psia;dpsia],yd*ones(N+1,1),psid*ones(N+1,1),oldu}};
else
    RHSC_out = controller{{[ya;va;psia;dpsia],yd*ones(N+1,1),psid*ones(N+1,1),oldu}};
end
end