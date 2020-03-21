
// machineFindInterface(machineObject, interfaceName)

    var machineObject, Name, interfaceObject, i;
    machineObject = argument0;    
    Name = argument1;
       
    // ---------------------------------------------------------------//
    
    for (i=0; i<machineObject.numInterfaces; i+=1)
    {
        interfaceObject = ds_list_find_value(machineObject.interfacesList, i);
        if (interfaceObject.interfaceName == Name)
            return interfaceObject;
    }
    return noone;
