/// player_state_insta_shield()
 // This is used for the insta shield.
  
 // Sonic's insta shield.
    if(player_index == CHAR_SONIC && shield_usable == true && shield == 0 && shield_obj == noone && CharacterState == CharacterNormal)
    {
       if(input_action_pressed)
       {
          if(instance_exists(obj_insta_shield) == false)
          {
             shield_usable = false;
             instance_create(x, y, obj_insta_shield);
             aud_play_sound(shield_use_insta, global.sfx_volume, 1, 0, 0);
          }
       }
    }

    
