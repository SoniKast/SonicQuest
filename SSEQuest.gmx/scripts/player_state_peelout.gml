/// player_state_peelout() 
 // Sonics figure 8 ability.
 
 // Trigger.
    if(state == STATE_LOOKUP)
    {
       if(input_action_pressed && input_up)
       {
          state        = STATE_PEELOUT;
          peelout_flag = 0;
          if(peelout_timer > 0) peelout_timer = 0;
          aud_play_sound(player_peelout_charge, global.sfx_volume, 1, 0, 0);
       }
    }
    
 // Charge and release: 
    if(state == STATE_PEELOUT)
    { 
       if(input_up)
       {
          if(peelout_timer < 32)
          {
             peelout_timer += 1;
          }
       }
       else // Release.
       {
          if(peelout_timer < 32)
          {
             state         = STATE_DEFAULT;
             peelout_timer = 0
             audio_stop_sound(player_peelout_charge);
          }
          else
          {
             state         = STATE_DEFAULT;
             x_speed       = animation_direction*12;
             peelout_timer = 0
             peelout_flag  = 1;
             aud_play_sound(player_peelout_release, global.sfx_volume, 1, 0, 0);           
             audio_stop_sound(player_peelout_charge);  
          }
       }
    }
    
 // Reset Peelout animation flag.
    if(state != STATE_DEFAULT || animation != "peelout")
    {
       if(peelout_flag == 1)
       {
          peelout_flag = 0;
       }  
    }
