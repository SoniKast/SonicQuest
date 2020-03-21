
// machineAttachInterface(machineObject, interfaceObject)

    var machineObject, interfaceObject;
    machineObject   = argument0;    
    interfaceObject = argument1;
       
    // ---------------------------------------------------------------//
    
    machineObject.numInterfaces += 1;
    ds_list_add(machineObject.interfacesList, interfaceObject);    
