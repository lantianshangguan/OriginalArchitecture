% if ~exist('NUTS_defined')
%     curDir = pwd;
%     cd 'C:\Program Files\PreScan\PreScan_7.5.1';
%     prescan_startup
%     cd(curDir)
% end
if ~exist('ReadTemplates')    
    load situationBusTemplate.mat
%     load PWAVehStateBusTemplate.mat
    load VehStateBusTemplate.mat
    load wayPointTemplate.mat
    load wpFollowerTemplate.mat
    load wpTemplate.mat
    load PrescanSimDataBusTemplate.mat
    load ArbitratedActuationReqTemplate.mat
    load RHSCCmdBusTemplate.mat
    load ControllerMainBusTemplate.mat
    load FunctionFeaturesBusTemplate.mat
    load ActuatorCmdBusTemplate.mat
    
    
    
    ReadTemplates = 1;
end

init_generic_vehicle;
open('SingleVehicle_01.mdl');
