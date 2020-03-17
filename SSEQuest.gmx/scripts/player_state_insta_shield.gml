/// player_state_insta_shield()
//  Script to execute the insta shield.

   // Only run if we have no shield:
      if(shield == 0 && global.player_id == 1 && invincibility == 0 && state = STATE_JUMP){
         if(shield_usable == true){
            if(input_action_pressed){
               shield_usable = false;
               INSTA = instance_create(floor(x), floor(y), obj_insta_shield)
               INSTA . Parent = id;

            }
         }
      }
