///player_state_peelout();
// Script to perform the characters peelout.

   // Check if we can perform a peelout:
      if(AbilityPeelout == 1){
      
         // Get Ready to peelout:
            if(x_speed == 0 && y_speed == 0 && input_up && input_action_pressed && state != STATE_PEELOUT){
               state = STATE_PEELOUT;
               aud_play_sound(player_peelout_charge, global.sfx_volume, 1, 0, 0);                 
            }
      
         // Increase the Peelout timer:
            if(state = STATE_PEELOUT && ground){
               if(PeeloutTimer < 12){
                  PeeloutTimer += 0.25;
               }else{
                  PeeloutTimer = 12;
               }
            } 

         // Perform the Peelout:
            if(state = STATE_PEELOUT && !input_up && PeeloutTimer == 12){
               state        = STATE_DEFAULT;
               x_speed      = animation_direction*12;
               PeeloutFlag  = 1;
               PeeloutTimer = 0;
               aud_play_sound(player_peelout_release, global.sfx_volume, 1, 0, 0);        
               audio_stop_sound(player_spindash_release);                          
            }
            
         // Don't trigger the Peelout:
            if(state = STATE_PEELOUT && !input_up && PeeloutTimer < 12){
               state        = STATE_DEFAULT;
               PeeloutTimer = 0;
            }
            
         }

  // Check if the peelout flag is enabled even though we're not performing one:
     if((PeeloutFlag = 1 && abs(x_speed) < 7) or (PeeloutFlag = 1 && state != STATE_DEFAULT)){
        PeeloutFlag = 0;
     }
