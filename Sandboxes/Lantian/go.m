if ~exist('ReadTemplates')    
    load situationBusTemplate.mat
    load VehStateBusTemplate.mat
    load wayPointTemplate.mat
    load wpFollowerTemplate.mat
    load wpTemplate.mat
    load PrescanSimDataBusTemplate.mat
    load ArbitratedActuationReqTemplate.mat
    load ControllerMainBusTemplate.mat
    load FunctionFeaturesBusTemplate.mat
    load ActuatorCmdBusTemplate.mat
    load ObjectBusTemplate.mat
    load ConnectedBusTemplate.mat
        
    ReadTemplates = 1;
end

init_generic_vehicle;
open('SingleVehicle_01.mdl');