
// controlCreatePicture(controlName, imageSprite, imageIndex, imageSpeed, x, y)

    var newControl;
    newControl = instance_create(0, 0, objMenuControlPicture);
    
    newControl.controlName     = argument0;
    newControl.imageSprite     = argument1;
    newControl.imageIndex      = argument2;
    newControl.imageSpeed      = argument3;
    newControl.x               = argument4;
    newControl.y               = argument5;
        
    return newControl;
