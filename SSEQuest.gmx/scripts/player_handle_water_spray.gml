// ==== FUNCTION ====================================================================
// player_handle_water_spray()
// ==================================================================================
//  From Time Twisted as well

    //if(Action = consActionWaterSpray)
       // exit;
    
    _ObjectHandle = instance_nearest(x, y, obj_wwz_water_spray);
    _ValveHandle = instance_nearest(x, y, obj_wwz_valve);
     if (_ObjectHandle = instance_nearest(x, y,obj_wwz_water_spray)) {
         if player_collision_check(COL_BOTTOM_OBJECT, MASK_LARGE, x, y, angle, _ObjectHandle)
    {  
        state = STATE_WATER_SPRAY
        }

        
        }
