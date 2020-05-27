/// player_handle_charged_springs()
// Code for the charged springs from the bonus stage. (Made by Pvic)
var charged;
charged = player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, obj_charged_spring)
    // Interact with charged spring
        if (charged)
        {
            if (input_action)
            {
                // Trigger Spring
                    if (charged.sprite_index == spr_charged_spring_normal)
                    {
                        charged.sprite_index = spr_charged_spring_charging;
                    }
                
                // Charge Spring
                    if (charged.sprite_index == spr_charged_spring_charging or charged.sprite_index == spr_charged_spring_charged)
                    {
                        // Snap to spring
                            x = charged.x + 16;
                            //y = max(y, charged.bbox_top - 12);
                            
                        // Set State
                            x_speed = 0;
                            y_speed = 0;
                            state = STATE_ROLL;
                            animation = "roll";
                            animation_speed = 0.2;
                        
                        // Check how charged it is.
                            if charged.sprite_index == spr_charged_spring_charging
                            {
                                if charged.image_index < 23
                                {
                                    charged.image_index += 0.15;
                                }
                                else
                                {
                                    charged.sprite_index = spr_charged_spring_charged;
                                }
                            }
                        
                        // Max Charge
                            if (charged.sprite_index == spr_charged_spring_charged)
                            {
                                charged.image_index += 0.25;
                            }       
                    }
            }
            
        // Get Launched up.
        if (input_action_released)
        {
            if (charged.sprite_index == spr_charged_spring_charged) or (charged.sprite_index == spr_charged_spring_charging && image_index > 20)
            {
                ground = false;
                state = STATE_SPRING;
                y_speed = -18;
                aud_play_sound(general_spring, global.sfx_volume, 1, 0, 0);
                charged.sprite_index = spr_charged_spring_release;
            }
        }
        
    }
