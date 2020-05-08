/// player_handle_block();
// Breakable bricks. 

    if (y_speed >= 0 && (state == STATE_JUMP) || (state == STATE_ROLL) || (state == STATE_SPINDASH))
        {
            // Check if the player has landed on top of the blocks
            handle = player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, obj_ggz_breakable_block);   
            // Destroy
            if (handle != noone) 
            {
                handle.targetHandle = id;
                with(handle){
                aud_play_sound(general_crumble, global.sfx_volume, 1, 0, 0);
                instance_destroy();
                }
                state = STATE_JUMP;
                if (y_speed>0)
                {
                y_speed = -3;
                }
                ground  =  false;
            }
        }
