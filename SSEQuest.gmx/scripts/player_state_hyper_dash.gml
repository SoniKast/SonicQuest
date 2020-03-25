///player_state_hyper_dash()
// Script to perform the Hyper Dash.

   if(CharacterState == CharacterHyper && state = STATE_JUMP && shield_usable == true){
      if(input_action_pressed){
       
         // Change Flags:
         x_speed        = 0;
         y_speed        = 0;
         shield_usable  = false;
         
         // Destroy all near enemies:
         with(par_enemy){
              if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0])) {
                 instance_destroy();
              }
         }
                 
         // Sound:
         aud_play_sound(shield_use_insta, global.sfx_volume, 1, 0, 0);
         
         // Create Screenflash:
         with(instance_create(x, y, obj_effect_screenflash)){
              flash_color = c_white;
         }
      
         // Directions:
         if(!input_right && !input_left && !input_up && !input_down){
            x_speed =  animation_direction*8;
            y_speed =  0;
         }
                  
         if(input_right && !input_left && !input_up && !input_down){
            x_speed = 8;
            y_speed = 0;
         }
         
         if(input_right && !input_left && input_up && !input_down){
            x_speed =  8;
            y_speed = -8;
         }
         
         if(input_right && !input_left && !input_up && input_down){
            x_speed = 8;
            y_speed = 8;
         }
         
         if(!input_right && input_left && !input_up && !input_down){
            x_speed = -8;
            y_speed =  0;
         }
                  
         if(!input_right && input_left && input_up && !input_down){
            x_speed = -8;
            y_speed = -8;
         }
         
         if(!input_right && input_left && !input_up && input_down){
            x_speed = -8;
            y_speed =  8;
         }
                  
         if(!input_right && !input_left && input_up && !input_down){
            x_speed =  0;
            y_speed = -8;
         }
         
         if(!input_right && !input_left && !input_up && input_down){
            x_speed = 0;
            y_speed = 8;
         }
                                    
      }
   }
