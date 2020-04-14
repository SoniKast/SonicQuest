/// player_handle_bosses()
//  Script to handle each boss. Code from Flicky

    // Set F.Breather handle:
    if(instance_exists(obj_npc_sth3_firebreather)){
    
       FireBreather   = player_collision_check(COL_MAIN_OBJECT, x, y, obj_npc_sth3_firebreather, -1, -1);
       FBreatherFlame = player_collision_check(COL_MAIN_OBJECT, x, y, obj_npc_sth3_firebreather_flame, -1, -1);
       
    // Hit/Destroy Breather:
       if(FireBreather != noone && (state != STATE_HURT && state != STATE_DEATH)){
          if(FireBreather.Boss_State != 'Defeated'){
          
          // Bounce:
             if(state = STATE_JUMP || state = STATE_ROLL || (state = STATE_FLY && y_speed < 0) || state = STATE_GLIDE){
                state        = STATE_ROLL;
                shield_usable = false;

             AngleToBoss = degtorad(round(wrap_angle(point_direction(x, y, FireBreather.x, FireBreather.y)-90)/22.5)*24);        
             if(physic_mode == 0){
                x_speed        = sin(wrap_angle(AngleToBoss))*4;
                y_speed        = cos(wrap_angle(AngleToBoss))*3;  
             }else{
                x_speed        = sin(wrap_angle(AngleToBoss))*2;
                y_speed        = cos(wrap_angle(AngleToBoss))*1.5;           
             }
             ground        = false;    
            
             if(state == STATE_FLY){
                // Check if the vertical speed is way too much:
                   if(y_speed < -3){
                      y_speed = -3;
                   }
             }  
 
          // Hurt Boss:
             with(FireBreather){
                  if(Boss_HP != 0 && Boss_State == 'Normal'){
                     Boss_State = 'Hit';   
                     Boss_HP--;        
                     aud_play_sound(general_destroy, global.sfx_volume, 1, 0, 0);       
                  }
             }
             
             }else if(state != STATE_HURT && state != STATE_DEATH && invincibility == 0){
                      player_state_hurt(FireBreather, false);             
             }   
             
          }           
       }
       // Get Hurt by Flames:
          if(FBreatherFlame != noone && (state != STATE_HURT && state != STATE_DEATH && invincibility == 0 && shield != SHIELD_FIRE)){      
             player_state_hurt(FBreatherFlame, false);
          } 
       
    }

