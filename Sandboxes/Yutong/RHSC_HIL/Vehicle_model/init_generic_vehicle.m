%init_generic_vehicle

vd.mass = 1000;
vd.lf = 0.1;
vd.lr = 0.2;

vd.mass_pwa = 1370;
vd.lf_pwa = 1.11;
vd.lr_pwa = 2.77622 - vd.lf_pwa;
vd.Iz_pwa = 4192;
vd.vx_pwa = 13;
vd.Cf1_pwa = -9.372*10^4*0.5477;
vd.Cr1_pwa = -9.406*10^4*0.5477;
vd.Cf2_pwa = -2.6908*10^3;
vd.Cr2_pwa = -3.6596*10^3;
vd.Cf3_pwa = vd.Cf2_pwa;
vd.Cr3_pwa = vd.Cr2_pwa;
vd.bf1_pwa = 0;
vd.br1_pwa = 0;
vd.bf2_pwa = 8.3285*10^3*0.3;
vd.br2_pwa = 6.4448*10^3*0.3;
vd.bf3_pwa = -vd.bf2_pwa;
vd.br3_pwa = -vd.br2_pwa;
vd.f_thre_pwa = 0.093*0.5477;
vd.r_thre_pwa = 0.071*0.5477;


vd.init.u = 13;
vd.init.X = 0;
vd.init.Y = 0;
vd.init.v = 0;
vd.init.psi = 0;
vd.init.dpsi = 0;


vd.CONTROL_OS_SAMPLETIME = 0.010; % seconds
wPArray = struct;
wPArray.x = 0;
wPArray.y = 0;
wPArray.z = 0;
wPArray.treach = 0;
vd.initialWayPointsArray = repmat(wPArray,100,1);
vd.initialCurrentWayPointIndex = uint16(1);
vd.initialFinalWayPointIndex = uint16(17);

for i = 1:100
    vd.initialWayPointsArray(i).x = i;
    vd.initialWayPointsArray(i).y = i;
    vd.initialWayPointsArray(i).z = 0;
    vd.initialWayPointsArray(i).treach = i;
end

vd.initialWayPointsArray(1).x = 0;
vd.initialWayPointsArray(1).y = 0;
vd.initialWayPointsArray(1).z = 0;
vd.initialWayPointsArray(1).treach = i;

vd.initialWayPointsArray(2).x = 4;
vd.initialWayPointsArray(2).y = 2;
vd.initialWayPointsArray(2).z = 0;
vd.initialWayPointsArray(2).treach = i;

vd.initialWayPointsArray(3).x = 6;
vd.initialWayPointsArray(3).y = 8;
vd.initialWayPointsArray(3).z = 0;
vd.initialWayPointsArray(3).treach = i;

vd.initialWayPointsArray(4).x = 4;
vd.initialWayPointsArray(4).y = 14;
vd.initialWayPointsArray(4).z = 0;
vd.initialWayPointsArray(4).treach = i;

vd.initialWayPointsArray(5).x = 0;
vd.initialWayPointsArray(5).y = 16;
vd.initialWayPointsArray(5).z = 0;
vd.initialWayPointsArray(5).treach = i;

vd.initialWayPointsArray(6).x = -4;
vd.initialWayPointsArray(6).y = 18;
vd.initialWayPointsArray(6).z = 0;
vd.initialWayPointsArray(6).treach = i;

vd.initialWayPointsArray(7).x = -6;
vd.initialWayPointsArray(7).y = 24;
vd.initialWayPointsArray(7).z = 0;
vd.initialWayPointsArray(7).treach = i;

vd.initialWayPointsArray(8).x = -5;
vd.initialWayPointsArray(8).y = 30;
vd.initialWayPointsArray(8).z = 0;
vd.initialWayPointsArray(8).treach = i;

vd.initialWayPointsArray(9).x = 0;
vd.initialWayPointsArray(9).y = 32;
vd.initialWayPointsArray(9).z = 0;
vd.initialWayPointsArray(9).treach = i;

vd.initialWayPointsArray(10).x = 6;
vd.initialWayPointsArray(10).y = 30;
vd.initialWayPointsArray(10).z = 0;
vd.initialWayPointsArray(10).treach = i;

vd.initialWayPointsArray(11).x = 8;
vd.initialWayPointsArray(11).y = 33;
vd.initialWayPointsArray(11).z = 0;
vd.initialWayPointsArray(11).treach = i;

vd.initialWayPointsArray(12).x = 15;
vd.initialWayPointsArray(12).y = 25;
vd.initialWayPointsArray(12).z = 0;
vd.initialWayPointsArray(12).treach = i;

vd.initialWayPointsArray(13).x = 8;
vd.initialWayPointsArray(13).y = 20;
vd.initialWayPointsArray(13).z = 0;
vd.initialWayPointsArray(13).treach = i;

vd.initialWayPointsArray(14).x = 4;
vd.initialWayPointsArray(14).y = 15;
vd.initialWayPointsArray(14).z = 0;
vd.initialWayPointsArray(14).treach = i;

vd.initialWayPointsArray(15).x = -5;
vd.initialWayPointsArray(15).y = 10;
vd.initialWayPointsArray(15).z = 0;
vd.initialWayPointsArray(15).treach = i;

vd.initialWayPointsArray(16).x = -6;
vd.initialWayPointsArray(16).y = 5;
vd.initialWayPointsArray(16).z = 0;
vd.initialWayPointsArray(16).treach = i;

vd.initialWayPointsArray(17).x = 0;
vd.initialWayPointsArray(17).y = 0;
vd.initialWayPointsArray(17).z = 0;
vd.initialWayPointsArray(17).treach = i;

vd.wpControl.wayPointThreshold = 0.3;
vd.wpControl.howClose_saturate = 1;
vd.wpControl.v_des_max = 1.5;
vd.wpControl.v_des_filter.lambda = 1;
vd.wpControl.psi_des_filter.lambda = 10;


vd.RHSC.N = 6;
vd.RHSC.T_s = vd.CONTROL_OS_SAMPLETIME;
vd.RHSC.nx = 4;
vd.RHSC.nu = 1;
vd.RHSC.rou = 0.7;
