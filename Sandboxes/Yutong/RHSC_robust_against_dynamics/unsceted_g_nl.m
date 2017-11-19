function [x_next] = unsceted_g_nl(x_current,u_current)

m = 1370;% Carsim_C_class low_friction
lf = 1.11;
lr = 2.77622-lf;
Iz = 4192;
vx = 13;
T_s = 0.1;


alfa_f = (x_current(2)+lf*x_current(4))/vx-u_current(1);

alfa_r = (x_current(2)-lr*x_current(4))/vx;


% Bf = 9.093;
% Cf = 1.3068;
% Df = 4.4764*10^3;
% Ef = -0.9585;
% 
% Br = 12.5669;
% Cr = 1.4893;
% Dr = 3.6556*10^3;
% Er = 0.8420;

Bf = 9.093;
Cf = 1.3068*0.8;
Df = 4.4764*10^3*0.6;
Ef = -0.9585*2;

Br = 12.5669;
Cr = 1.3893*0.8;
Dr = 4.4556*10^3;
Er = -0.8420*2;

Ffy = -2*Df*sin(Cf*atan((1-Ef)*Bf*alfa_f + Ef*atan(Bf*alfa_f)));
Fry = -2*Dr*sin(Cr*atan((1-Er)*Br*alfa_r + Er*atan(Br*alfa_r)));

x_next(1) = x_current(1) + T_s*x_current(2) + T_s*vx*x_current(3);
x_next(2) = x_current(2) + T_s/m*(Ffy + Fry) - T_s*vx*x_current(4);
x_next(3) = x_current(3) + T_s*x_current(4);
x_next(4) = 1/Iz*(Ffy*lf - Fry*lr + u_current(2))*T_s + x_current(4);

x_next = [x_next(1);x_next(2);x_next(3);x_next(4)]
