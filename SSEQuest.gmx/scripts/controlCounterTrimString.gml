
// controlCounterTrimString(controlObject)
    
    if (argument0 == noone)                               exit;
    if (argument0.counterType != menuCounterTypeStrings)  exit;

    ds_list_delete(argument0.counterStringsList, ds_list_size(argument0.counterStringsList));
    
    argument0.counterValue          = 0;
    argument0.counterMiniumValue    = 0;
    argument0.counterMaxiumValue   -= 1;
