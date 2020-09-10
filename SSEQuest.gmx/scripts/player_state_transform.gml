/// scr_character_action_transform()
//  Script to handle the Transforming state.
 
    // Check if we can Transform:
       if(state != STATE_TRANSFORM && state = STATE_JUMP && CharacterState == CharacterNormal && shield = 0 && shield_obj = noone && invincibility == 0 && AllowTransformation == 1 && state != STATE_FLY && state != STATE_FLYDROP){
          if((global.player_emeralds == 7 || global.player_emeralds == 14) && global.player_rings >= 50 && input_action_pressed){
             state = STATE_TRANSFORM;
             invincibility          =  2;
             invincibility_timer    = -3;
             aud_play_sound(player_transform, global.sfx_volume, 1, 0, 0);
          }
       }
       
    // Transform into the Super Form:
       if(state = STATE_TRANSFORM){
          x_speed = 0;
          y_speed = 0;
          aud_play_sound(jingle_super, global.sfx_volume, 1, 1, 0);
          if(animation_frame >= 3){
             if(TransformTimer != 0){
                TransformTimer--
             }else{
                if(global.player_emeralds == 7){
                    CharacterState = CharacterSuper;
                }else if(global.player_emeralds == 14){
                         CharacterState = CharacterHyper;
                }
                state          = STATE_JUMP;
             }
          }
       }      
       
    // Decrease the Ring Counter and Transform back into our normal state.
       if(CharacterState == CharacterSuper or CharacterState == CharacterHyper){
          if(global.player_rings != 0){
             if(alarm[0] == -1){
                alarm[0] = 60;
             }
          }else{
            // Make sure to not run the alarm event:
               alarm[0] = -1;                  
            // Palette fade:
               if((player_index = CHAR_SONIC) || (player_index == CHAR_TAILS) || (player_index == CHAR_KNUCKLES && CharacterState == CharacterHyper)){
                  TransformEnded  = 1;
                  if(player_index != CHAR_SONIC){
                     PalettePosition = 1;
                  }else{
                     PalettePosition = 0;
                  }
               }
            // Reset the Characters state:
               CharacterState = CharacterNormal;                
            // Change the animation to "BLANK" to make sure that the current animation is being reloaded.
               animaton      = "BLANK";
            // Reset the Transform Timer:
               if(player_index != CHAR_KNUCKLES){
                  TransformTimer = 15;
               }else{
                  TransformTimer = 3;
               }
            // Again, change the animation to "BLANK" to make sure that the current animation is being reloaded properly.
               animaton      = "BLANK AGAIN";
          }
       }

