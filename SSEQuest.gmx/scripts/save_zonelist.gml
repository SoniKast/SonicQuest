/// save_zonelist()
 // This is used to load the proper stage after selecting a saved game.
 // Make sure to add global.zone_id to the room's creation code. (This should only be done in the first act)
 
    if(global.zone_id == 0) room_goto (global.first_zone);
    if(global.zone_id == 1) room_goto (rm_radiant_valley1);
    if(global.zone_id == 2) room_goto (rm_great_garden1);    
    if(global.zone_id == 3) room_goto (rm_pinball_panic1);
    if(global.zone_id == 4) room_goto (rm_forest_frenzy1);
    if(global.zone_id == 5) room_goto (rm_aquapolis1);
  
