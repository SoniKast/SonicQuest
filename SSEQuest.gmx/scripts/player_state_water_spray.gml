// ==== FUNCTION ====================================================================
// player_state_water_spray()
// ==================================================================================
//  

    water_spray_handle = instance_nearest(x, y, obj_wwz_water_spray);
    valve_handle       = instance_nearest(x, y, obj_wwz_valve);
        
    if(state = STATE_WATER_SPRAY)
    {
        if(valve_handle.SprayPower < water_spray_handle.vspeed && water_spray_handle.DirChange <> 1)
        {
        y = water_spray_handle.y-8
        animation = "hurt";
        x_speed = 0;
        }
        else
        {
        obj_player.y_speed = valve_handle.SprayPower*.9
        state = STATE_DEFAULT
        water_spray_handle.vspeed = 8
        water_spray_handle.DirChange = 1
        }
    }
