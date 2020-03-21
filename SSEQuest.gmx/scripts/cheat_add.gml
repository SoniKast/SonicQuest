// cheat_add(cheatname,numberofsoundsrequired,sound1,sound2,sound3,sound4,sound5]
// sound 1 is required, all other sounds are optional.

// all sound id's are required in deciaml form, but will be converted to hex
// so for sound with label '11' use 17 because 11 is the hex version of 17

var thischeat, thischeatbuttonsrequired;
thischeat = ds_map_create();
ds_map_add(thischeat,"name",argument0);
thischeatbuttonsrequired = ds_list_create();
for (i=0; i<argument1; i+=1) {
ds_list_add(thischeatbuttonsrequired,argument[i+2]);
}
ds_map_add(thischeat,"keys",thischeatbuttonsrequired);
ds_list_add(global.cheats,thischeat);
ds_map_add(global.activecheats,argument0,false);

