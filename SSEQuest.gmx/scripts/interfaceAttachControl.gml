// =========================================================================================
// interfaceAttachControl(interfaceObject, controlObject)
// =========================================================================================

    var interfaceObject, controlObject;
    
    interfaceObject = argument0;
    controlObject   = argument1;
    
    // ---------------------------------------------------------------//
    
    interfaceObject.numControls += 1;
    ds_list_add(interfaceObject.controlsList, controlObject);
