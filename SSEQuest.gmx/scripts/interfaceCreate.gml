// =========================================================================================
// interfaceCreate(interfaceName, backgroundObject)
// =========================================================================================

    var newInterface; newInterface = instance_create(0, 0, objMenuInterface);
    
    // ---------------------------------------------------------------//
    
    newInterface.interfaceName      = argument0;
    newInterface.backgroundObject   = argument1;
    
    return newInterface;
