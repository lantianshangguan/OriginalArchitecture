%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>%
%>>>>>>>>>>>>>>  CONFIGURATION  >>>>>>>>>>>>>>%
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>%
% if ~exist('ReadTemplates')    
%     load situationBusTemplate.mat
%     load VehStateBusTemplate.mat
%     load wayPointTemplate.mat
%     load wpFollowerTemplate.mat
%     load wpTemplate.mat
%     load PrescanSimDataBusTemplate.mat
%     load ArbitratedActuationReqTemplate.mat
%     load ControllerMainBusTemplate.mat
%     load FunctionFeaturesBusTemplate.mat
%     load ActuatorCmdBusTemplate.mat
%     ReadTemplates = 1;
% end
% 
% folder  = 'C:\Users\shangguanlantian\Documents\Denso_Lantian\PreScanMultiVehicleWorkspace\initialstates';
% list    = dir(fullfile(folder, '*.m'));
% nFile   = length(list);
% 
% for k = 1:nFile
%   file = list(k).name;
%   run(fullfile(folder, file));
% end
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<%
%<<<<<<<<<<<<<<  CONFIGURATION  <<<<<<<<<<<<<<%
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<%

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>%
%>>>  VEHICLE INITIAL STATES & WAYPOINTS  >>>%
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>%
vdn.mass = 1000;
vdn.lf = 0.1;
vdn.lr = 0.2;

vdn.init.u = 1.5;
vdn.init.X = 0;
vdn.init.Y = 0;
vdn.init.psi = 0;

vdn.CONTROL_OS_SAMPLETIME = 0.010; % seconds
wPArray = struct;
wPArray.x = 0;
wPArray.y = 0;
wPArray.z = 0;
wPArray.treach = 0;
vdn.initialWayPointsArray = repmat(wPArray,100,1);
vdn.initialCurrentWayPointIndex = uint16(1);
vdn.initialFinalWayPointIndex = uint16(17);

for i = 1:100
    vdn.initialWayPointsArray(i).x = i;
    vdn.initialWayPointsArray(i).y = i;
    vdn.initialWayPointsArray(i).z = 0;
    vdn.initialWayPointsArray(i).treach = i;
end

vdn.initialWayPointsArray(1).x = 0;
vdn.initialWayPointsArray(1).y = 0;
vdn.initialWayPointsArray(1).z = 0;
vdn.initialWayPointsArray(1).treach = i;

vdn.initialWayPointsArray(2).x = 1;
vdn.initialWayPointsArray(2).y = 1;
vdn.initialWayPointsArray(2).z = 0;
vdn.initialWayPointsArray(2).treach = i;

vdn.initialWayPointsArray(3).x = 4;
vdn.initialWayPointsArray(3).y = 8;
vdn.initialWayPointsArray(3).z = 0;
vdn.initialWayPointsArray(3).treach = i;

vdn.initialWayPointsArray(4).x = 2;
vdn.initialWayPointsArray(4).y = 14;
vdn.initialWayPointsArray(4).z = 0;
vdn.initialWayPointsArray(4).treach = i;

vdn.initialWayPointsArray(5).x = 0;
vdn.initialWayPointsArray(5).y = 16;
vdn.initialWayPointsArray(5).z = 0;
vdn.initialWayPointsArray(5).treach = i;

vdn.initialWayPointsArray(6).x = -6;
vdn.initialWayPointsArray(6).y = 18;
vdn.initialWayPointsArray(6).z = 0;
vdn.initialWayPointsArray(6).treach = i;

vdn.initialWayPointsArray(7).x = -8;
vdn.initialWayPointsArray(7).y = 24;
vdn.initialWayPointsArray(7).z = 0;
vdn.initialWayPointsArray(7).treach = i;

vdn.initialWayPointsArray(8).x = -7;
vdn.initialWayPointsArray(8).y = 30;
vdn.initialWayPointsArray(8).z = 0;
vdn.initialWayPointsArray(8).treach = i;

vdn.initialWayPointsArray(9).x = -2;
vdn.initialWayPointsArray(9).y = 32;
vdn.initialWayPointsArray(9).z = 0;
vdn.initialWayPointsArray(9).treach = i;

vdn.initialWayPointsArray(10).x = 4;
vdn.initialWayPointsArray(10).y = 30;
vdn.initialWayPointsArray(10).z = 0;
vdn.initialWayPointsArray(10).treach = i;

vdn.initialWayPointsArray(11).x = 6;
vdn.initialWayPointsArray(11).y = 33;
vdn.initialWayPointsArray(11).z = 0;
vdn.initialWayPointsArray(11).treach = i;

vdn.initialWayPointsArray(12).x = 13;
vdn.initialWayPointsArray(12).y = 25;
vdn.initialWayPointsArray(12).z = 0;
vdn.initialWayPointsArray(12).treach = i;

vdn.initialWayPointsArray(13).x = 6;
vdn.initialWayPointsArray(13).y = 20;
vdn.initialWayPointsArray(13).z = 0;
vdn.initialWayPointsArray(13).treach = i;

vdn.initialWayPointsArray(14).x = 2;
vdn.initialWayPointsArray(14).y = 15;
vdn.initialWayPointsArray(14).z = 0;
vdn.initialWayPointsArray(14).treach = i;

vdn.initialWayPointsArray(15).x = -7;
vdn.initialWayPointsArray(15).y = 10;
vdn.initialWayPointsArray(15).z = 0;
vdn.initialWayPointsArray(15).treach = i;

vdn.initialWayPointsArray(16).x = -8;
vdn.initialWayPointsArray(16).y = 5;
vdn.initialWayPointsArray(16).z = 0;
vdn.initialWayPointsArray(16).treach = i;

vdn.initialWayPointsArray(17).x = -2;
vdn.initialWayPointsArray(17).y = 0;
vdn.initialWayPointsArray(17).z = 0;
vdn.initialWayPointsArray(17).treach = i;

vdn.wpControl.wayPointThreshold = 0.3;
vdn.wpControl.howClose_saturate = 1;
vdn.wpControl.v_des_max = 1.5;
vdn.wpControl.v_des_filter.lambda = 1;
vdn.wpControl.psi_des_filter.lambda = 10;
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<%
%<<<  VEHICLE INITIAL STATES & WAYPOINTS  <<<%
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<%