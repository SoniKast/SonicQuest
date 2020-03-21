// =========================================================================================
// interfaceFindControl(interfaceObject, controlName)
// =========================================================================================

    var interfaceObject, controlName, controlObject, i;
    
    interfaceObject = argument0;
    controlName     = argument1;

    // ---------------------------------------------------------------//
    
    for (i=0; i<interfaceObject.numControls; i+=1)
    {
        controlObject = ds_list_find_value(interfaceObject.controlsList, i);
        if (controlObject.controlName == controlName) return controlObject;
    }
    
    return noone;
