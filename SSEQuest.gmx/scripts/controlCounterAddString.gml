
// controlCounterAddString(controlObject, newString)
    
    if (argument0 == noone)                               exit;
    if (argument0.counterType != menuCounterTypeStrings)  exit;
    if (!is_string(argument1))                            exit;
    
    ds_list_add(argument0.counterStringsList, argument1);
    
    argument0.counterValue          = 0;
    argument0.counterMiniumValue    = 0;
    argument0.counterMaxiumValue   += 1;
