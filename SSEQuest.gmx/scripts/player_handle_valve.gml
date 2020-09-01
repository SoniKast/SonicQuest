// ==== FUNCTION ====================================================================
// player_handle_valve()
// ==================================================================================
//  From Time Twisted, coded by Overbound (?)

    var valve_handle;
            valve_handle = instance_nearest(x, y, obj_wwz_valve);
    
    if (valve_handle != noone) {
        if (player_collision_check(COL_MAIN_OBJECT, x, y, valve_handle, -1, -1) && state = STATE_JUMP) {
          
            if(valve_handle.RotationOn = 0)
            {
                valve_handle.alarm[0] = 20;
                valve_handle.RotationOn = 1
                x_speed = x_speed*.75  
                }
            }
        }
        
    var valve_handle_2;
            valve_handle_2 = instance_nearest(x, y, obj_wwz_water_switch);
    
    if(valve_handle_2 != noone) {
        if(player_collision_check(COL_MAIN_OBJECT, x, y, valve_handle_2, -1, -1) && state = STATE_JUMP) {
          
            if(valve_handle_2.RotationOn = 0)
            {
                valve_handle_2.alarm[0] = 20;
                valve_handle_2.RotationOn = 1
                x_speed = x_speed*.75  
                }
            }
        }
