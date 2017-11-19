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
    
    ReadTemplates = 1;
end

folder  = 'C:\Users\shangguanlantian\Documents\Denso_Lantian\PreScanMultiVehicleWorkspace\initialstates';
list    = dir(fullfile(folder, '*.m'));
nFile   = length(list);

for k = 1:nFile
  file = list(k).name;
  run(fullfile(folder, file));
end