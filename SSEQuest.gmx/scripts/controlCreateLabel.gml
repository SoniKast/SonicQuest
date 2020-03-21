
// controlCreateLabel(controlName, labelText, textFont, textColor, horizontalAlign, verticalAlign, x, y)

    var newControl;
    newControl = instance_create(0, 0, objMenuControlLabel);
    
    newControl.controlName     = argument0;
    newControl.labelText       = argument1;
    newControl.textFont        = argument2;
    newControl.textColor       = argument3;
    newControl.horizontalAlign = argument4;
    newControl.verticalAlign   = argument5;
    newControl.x               = argument6;
    newControl.y               = argument7;
    
    return newControl;
