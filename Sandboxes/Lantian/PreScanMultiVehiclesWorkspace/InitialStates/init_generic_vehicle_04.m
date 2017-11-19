%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>%
%>>>  VEHICLE INITIAL STATES & WAYPOINTS  >>>%
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>%
vd04.mass = 1000;
vd04.lf = 0.1;
vd04.lr = 0.2;

vd04.init.u = 1.5;
vd04.init.X = 0;
vd04.init.Y = 0;
vd04.init.psi = 0;

vd04.CONTROL_OS_SAMPLETIME = 0.010; % seconds
wPArray = struct;
wPArray.x = 0;
wPArray.y = 0;
wPArray.z = 0;
wPArray.treach = 0;
vd04.initialWayPointsArray = repmat(wPArray,100,1);
vd04.initialCurrentWayPointIndex = uint16(1);
vd04.initialFinalWayPointIndex = uint16(17);

for i = 1:100
    vd04.initialWayPointsArray(i).x = i;
    vd04.initialWayPointsArray(i).y = i;
    vd04.initialWayPointsArray(i).z = 0;
    vd04.initialWayPointsArray(i).treach = i;
end

vd04.initialWayPointsArray(1).x = 0;
vd04.initialWayPointsArray(1).y = 0;
vd04.initialWayPointsArray(1).z = 0;
vd04.initialWayPointsArray(1).treach = i;

vd04.initialWayPointsArray(2).x = 1;
vd04.initialWayPointsArray(2).y = 1;
vd04.initialWayPointsArray(2).z = 0;
vd04.initialWayPointsArray(2).treach = i;

vd04.initialWayPointsArray(3).x = 4;
vd04.initialWayPointsArray(3).y = 8;
vd04.initialWayPointsArray(3).z = 0;
vd04.initialWayPointsArray(3).treach = i;

vd04.initialWayPointsArray(4).x = 2;
vd04.initialWayPointsArray(4).y = 14;
vd04.initialWayPointsArray(4).z = 0;
vd04.initialWayPointsArray(4).treach = i;

vd04.initialWayPointsArray(5).x = 0;
vd04.initialWayPointsArray(5).y = 16;
vd04.initialWayPointsArray(5).z = 0;
vd04.initialWayPointsArray(5).treach = i;

vd04.initialWayPointsArray(6).x = -6;
vd04.initialWayPointsArray(6).y = 18;
vd04.initialWayPointsArray(6).z = 0;
vd04.initialWayPointsArray(6).treach = i;

vd04.initialWayPointsArray(7).x = -8;
vd04.initialWayPointsArray(7).y = 24;
vd04.initialWayPointsArray(7).z = 0;
vd04.initialWayPointsArray(7).treach = i;

vd04.initialWayPointsArray(8).x = -7;
vd04.initialWayPointsArray(8).y = 30;
vd04.initialWayPointsArray(8).z = 0;
vd04.initialWayPointsArray(8).treach = i;

vd04.initialWayPointsArray(9).x = -2;
vd04.initialWayPointsArray(9).y = 32;
vd04.initialWayPointsArray(9).z = 0;
vd04.initialWayPointsArray(9).treach = i;

vd04.initialWayPointsArray(10).x = 4;
vd04.initialWayPointsArray(10).y = 30;
vd04.initialWayPointsArray(10).z = 0;
vd04.initialWayPointsArray(10).treach = i;

vd04.initialWayPointsArray(11).x = 6;
vd04.initialWayPointsArray(11).y = 33;
vd04.initialWayPointsArray(11).z = 0;
vd04.initialWayPointsArray(11).treach = i;

vd04.initialWayPointsArray(12).x = 13;
vd04.initialWayPointsArray(12).y = 25;
vd04.initialWayPointsArray(12).z = 0;
vd04.initialWayPointsArray(12).treach = i;

vd04.initialWayPointsArray(13).x = 6;
vd04.initialWayPointsArray(13).y = 20;
vd04.initialWayPointsArray(13).z = 0;
vd04.initialWayPointsArray(13).treach = i;

vd04.initialWayPointsArray(14).x = 2;
vd04.initialWayPointsArray(14).y = 15;
vd04.initialWayPointsArray(14).z = 0;
vd04.initialWayPointsArray(14).treach = i;

vd04.initialWayPointsArray(15).x = -7;
vd04.initialWayPointsArray(15).y = 10;
vd04.initialWayPointsArray(15).z = 0;
vd04.initialWayPointsArray(15).treach = i;

vd04.initialWayPointsArray(16).x = -8;
vd04.initialWayPointsArray(16).y = 5;
vd04.initialWayPointsArray(16).z = 0;
vd04.initialWayPointsArray(16).treach = i;

vd04.initialWayPointsArray(17).x = -2;
vd04.initialWayPointsArray(17).y = 0;
vd04.initialWayPointsArray(17).z = 0;
vd04.initialWayPointsArray(17).treach = i;

vd04.wpControl.wayPointThreshold = 0.3;
vd04.wpControl.howClose_saturate = 1;
vd04.wpControl.v_des_max = 1.5;
vd04.wpControl.v_des_filter.lambda = 1;
vd04.wpControl.psi_des_filter.lambda = 10;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<%
%<<<  VEHICLE INITIAL STATES & WAYPOINTS  <<<%
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<%