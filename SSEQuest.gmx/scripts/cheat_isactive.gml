if (!ds_map_exists(global.activecheats,argument0)) {
    show_error("cheat_isactive() - Cheat '" + argument0 + "' Does Not Exist",false);
}
else {
    return ds_map_find_value(global.activecheats,argument0);
}
