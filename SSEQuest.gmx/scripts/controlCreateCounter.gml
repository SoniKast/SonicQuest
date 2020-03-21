
// controlCreateCounter(controlName, counterType, buttonText, textFont, colorSelected, colorUnselected, colorDisabled, hAlign, vAlign, x, y, counterX, counterY, callBack, enabled)

    var newControl;
    newControl = instance_create(0, 0, objMenuControlCounter);
    
    newControl.controlName     = argument0;
    newControl.counterType     = argument1;
    newControl.buttonText      = argument2;
    newControl.textFont        = argument3;
    newControl.colorSelected   = argument4;
    newControl.colorUnselected = argument5;
    newControl.colorDisabled   = argument6;
    newControl.horizontalAlign = argument7;
    newControl.verticalAlign   = argument8;
    newControl.x               = argument9;
    newControl.y               = argument10;
    newControl.counterX        = argument11;
    newControl.counterY        = argument12;
    newControl.callbackCode    = argument13;
    newControl.enabled         = argument14;
        
    return newControl;
