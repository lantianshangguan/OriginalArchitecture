% -------------------------------------------------------------------------
% Autor    : Yutong Li
% Umgebung : Matlab 2014a
% Stand    : 11.27.2016
% -------------------------------------------------------------------------
%
% Discrete-Discrete Unscented Kalman-Filter.


function output = unscented_KF_dd(xhat, Pxx1, Pxx2, Pxx3, Pxx4, u, z, t)

persistent bb
if isempty(bb)
    bb = 1;  
    Pxx = diag([1 1 1 1]);
else
    Pxx = [ Pxx1, Pxx2, Pxx3, Pxx4 ];
%     Pxx = diag([1 1 1 1]);
end


% Standardabweichungen für Prozessrauschen
Q_Y = 0.01;
Q_vy = 0.1;
Q_dfai = 0.01;
Q_ddfai = 0.01;
Q = diag([ Q_Y^2 Q_vy^2 Q_dfai^2 Q_ddfai^2]);
% Standardabweichungen für Messrauschen
% R_dfai = 0.001;
% R_ddfai = 0.001;
% R = diag([ R_dfai^2 R_ddfai^2 ]);

% R_dfai = 0.001;
% R_Y = 0.01;
% R_vy = 0.01;
% R_dfai = 0.01;
% R_ddfai = 0.01;
% R = diag([ R_Y^2 R_vy^2 R_dfai^2 R_ddfai^2]);
R_ddfai = 1.5;
R = diag([ R_ddfai^2 ]);

% ------------------------- Unscentend Transform Parameter ----------------
% Die folgenden Groessen lassen sich für die reale Implementierung
% auch einmalig extern berechnen und als Argumente übergeben.

Alpha =  0.5;  % direkte Skalierung der Sigmapunkte : unscaled=1
Beta  =  2.0;  % Kovarianzgewichtung für Erwartungswert : unscaled=0
Kappa = -1.0;  % Gewichtung des Erwartungswertes : unscaled=1

n       = numel(xhat);   % Dimension des Zustandsraums
ny      = 1; 
nPoints = 2*n+1;         % Anzahl der Sigma - Punkte
Lamda  = Alpha^2 * (n+Kappa) - n;

% Berechnung der Gewichtungsfaktoren
wm = ones(nPoints,1);
wc = ones(nPoints,1);

wm(1) = Lamda/(n + Lamda);

for i = 2:(2*n+1)
    wm(i) = 1/(2*(n + Lamda));
end

wc(1) =  Lamda/(n+Lamda)+(1-Alpha^2 + Beta);

for i = 2:(2*n+1)
    wc(i) = 1/(2*(n + Lamda));
end


% ------------------------- Praediktor ------------------------------------
% Generierung der Sigma-Punkte (3.66)
Cxx = chol(Pxx,'lower');
%   X   = xhat*ones(1,nPoints) + sqrt(Lambda+n)*[ zeros(n,1) Cxx -Cxx ];
X = ones(n,nPoints);

X(:,1) = xhat;

for i = 2:(n+1)
    X(:,i) = xhat + sqrt(Lamda + n)*Cxx(:,i-1);
end

for i = (n+2): nPoints
    X(:,i) = xhat - sqrt(Lamda + n)*Cxx(:,i-1-n);
end

% Transformation der Sigma-Punkte Y = f(X)
% eq.3
y1 = ones(n,nPoints);

for i = 1:nPoints
    y1(:,i) = unsceted_g_nl(X(:,i),u);
end


% eq.4
x_pie = zeros(4,1);

for i = 1:nPoints
    x_pie = x_pie + wm(i)*y1(:,i);
end

xhat = x_pie;

% eq.5

Pxx_pie = zeros(n,n);

for i = 1:nPoints
    Pxx_pie = Pxx_pie + wc(i)*(y1(:,i)-xhat)*(y1(:,i)-xhat)';
end

Pxx = Pxx_pie + Q;

% ------------------------- Korrektor -------------------------------------
% zeitdiskrete Implementierung
% Generierung der Sigma - Punkte
Cxx = chol(Pxx,'lower');

%   eq.6
X = ones(n,nPoints);

X(:,1) = xhat;

for i = 2:(n+1)
    X(:,i) = xhat + sqrt(Lamda + n)*Cxx(:,i-1);
end

for i = (n+2): nPoints
    X(:,i) = xhat - sqrt(Lamda + n)*Cxx(:,i-1-n);
end

% eq.7

Y = ones(ny,nPoints);

for i = 1:nPoints
    Y(:,i) = unsceted_h(X(:,i));
end

% eq.8

z_pie = zeros(ny,1);

for i = 1:nPoints
    z_pie = z_pie + wm(i)*Y(:,i);
end

zhat = z_pie;

%  eq.9

Pzz_pie = zeros(ny,ny);

for i = 1:nPoints
    Pzz_pie = Pzz_pie + wc(i)*(Y(:,i)-zhat)*(Y(:,i)-zhat)';
end

Pzz = Pzz_pie + R;

Pxz_pie = zeros(n,ny);

% eq.10

for i = 1:nPoints
    Pxz_pie = Pxz_pie + wc(i)*(X(:,i)-xhat)*(Y(:,i)-zhat)';
end

Pxz = Pxz_pie;

% eq.11
K = Pxz*inv(Pzz);

% eq.12/13
xhat = xhat + K*(z-zhat);
Pxx  = Pxx - K*Pzz*K' + 0.001*diag([1 1 1 1]);

output = [ xhat(1,1); xhat(2,1); xhat(3,1); xhat(4,1); Pxx(1,1); Pxx(2,1); Pxx(3,1); Pxx(4,1);Pxx(1,2); Pxx(2,2); Pxx(3,2); Pxx(4,2);Pxx(1,3); Pxx(2,3); Pxx(3,3); Pxx(4,3);Pxx(1,4); Pxx(2,4); Pxx(3,4); Pxx(4,4);];

% ######################### end of file ###################################