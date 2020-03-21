
// controlCounterSetValues(controlObject, defaultValue, miniumValue, maxiumValue)
    
    if (argument0 == noone)                                 exit;
    if (argument0.counterType != menuCounterTypeNumerical)  exit;
    
    argument0.counterValue          = argument1;
    argument0.counterMiniumValue    = argument2;
    argument0.counterMaxiumValue    = argument3;
