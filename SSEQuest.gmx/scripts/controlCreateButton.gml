
// controlCreateButton(controlName, buttonText, textFont, colorSelected, colorUnselected, colorDisabled, hAlign, vAlign, x, y, callBack, enabled)

    var newControl;
    newControl = instance_create(0, 0, objMenuControlButton);
    
    newControl.controlName     = argument0;
    newControl.buttonText      = argument1;
    newControl.textFont        = argument2;
    newControl.colorSelected   = argument3;
    newControl.colorUnselected = argument4;
    newControl.colorDisabled   = argument5;
    newControl.horizontalAlign = argument6;
    newControl.verticalAlign   = argument7;
    newControl.x               = argument8;
    newControl.y               = argument9;
    newControl.callbackCode    = argument10;
    newControl.enabled         = argument11;
        
    return newControl;
