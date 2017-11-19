figure
% plot(vd_DataControllerMain_IdealSensors.psi.Time, mod(vd_DataControllerMain_IdealSensors.psi.Data, 2*pi))
plot(vd_DataControllerMain_IdealSensors.psi.Time, vd_DataControllerMain_IdealSensors.psi.Data)


hold
plot(vd_DataControllerMain_wpFollower.psi_des.Time, vd_DataControllerMain_wpFollower.psi_des.Data,'r')



figure
plot(vd_DataControllerMain_currentWayPoint.x.Data, vd_DataControllerMain_currentWayPoint.y.Data,'o'
hold
plot(vd_DataControllerMain_IdealSensors.x.Data, vd_DataControllerMain_IdealSensors.y.Data,'+')