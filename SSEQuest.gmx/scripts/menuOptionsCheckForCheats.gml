var cheatmatched, cheat, cheatname, cheatkeys;
for (c=0; c<ds_list_size(global.cheats); c+=1) {
    cheatmatched = true;
    cheat = ds_list_find_value(global.cheats,c);
    cheatname = ds_map_find_value(cheat,"name");
    cheatkeys = ds_map_find_value(cheat,"keys");
    cheatkeyssize = ds_list_size(cheatkeys);
    for (k=0; k<cheatkeyssize; k+=1) {
        soundtestval = ds_list_find_value(global.soundtestlist,((5-cheatkeyssize)+k));
        cheatval = ds_list_find_value(cheatkeys,k);
        if (soundtestval != cheatval) {
            cheatmatched = false;
            break;
        }
    }
    if (cheatmatched) {
        if (!cheat_isactive(cheatname)) {
            sound_play(sndSecretGet);
            ds_map_replace(global.activecheats,cheatname,true);
        }
        break;
    }
}

