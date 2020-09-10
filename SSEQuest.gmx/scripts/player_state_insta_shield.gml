/// player_state_insta_shield()
 // This is used for the insta shield.

   // Only run if we have no shield:
      if(shield == 0 && shield_obj == noone && CharacterState = CharacterNormal && invincibility == 0 && state = STATE_JUMP){
         if(shield_usable == true){
            if(input_action_pressed){
               shield_usable = false;
               instance_create(x, y, obj_insta_shield);
               aud_play_sound(shield_use_insta, global.sfx_volume, 1, 0, 0);
            }
         }
      }
/*
/// player_state_insta_shield()
 // This is used for the insta shield.
  
 // Sonic's insta shield.
    if(player_index == CHAR_SONIC && shield_usable == true && shield == 0 && shield_obj == noone && CharacterState == CharacterNormal)
    {
       if(input_action_pressed && global.player_emeralds < 7)
       {
          if(instance_exists(obj_insta_shield) == false)
          {
             shield_usable = false;
             instance_create(x, y, obj_insta_shield);
             aud_play_sound(shield_use_insta, global.sfx_volume, 1, 0, 0);
          }
       }
    }

    
