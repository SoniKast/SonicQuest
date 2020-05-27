/// player_physics_kast()
 // Sets Kasts physics values.
    
 // Default physics.
       // Horizontal:
          if(speedshoe == 0)
          {
             x_speed_top = 10;
          }
          else
          {
             x_speed_top = 16;          
          }
 
          if(speedshoe == 0)
          {               
             x_acceleration = 0.09375;
          }
          else
          {
             x_acceleration = 0.09375;
          }
          
          x_deceleration    = 0.6;      
          x_slope_factor    = 0.125;  
          
          if(speedshoe == 0)
          {  
             x_air_accel = 0.1875; 
          } 
          else
          {
             x_air_accel = 0.1875;
          }
          
       // Vertical:                           
          if(state = STATE_HURT){
             y_acceleration = 0.1875;
          }else{
             y_acceleration = y_accel_common;
          }
          
       // Jump:
          jump_strength     = -7    
          jump_release      = -4;     
 
       // Roll:
          roll_deceleration = 0.125;    
          if(speedshoe == 0)
          {
             roll_friction = 0.046875; 
          } 
          else
          {
             roll_friction = 0.046875;
          }
          roll_decel_up     = 0.078125;  
          roll_decel_down   = 0.3125;    
 
 if((player_index == CHAR_KAST) && (CharacterState == CharacterSuper)  or (CharacterState == CharacterHyper)){        
       // Horizontal:
          if(speedshoe == 0)
          {
             x_speed_top = 16;
          }
          else
          {
             x_speed_top = 16;          
          }
 
          if(speedshoe == 0)
          {               
             x_acceleration = 0.09375*4;
          }
          else
          {
             x_acceleration = 0.09375*4;
          }
          
          x_deceleration    = 1;      
          x_slope_factor    = 0.5*2;  
          
          if(speedshoe == 0)
          {  
             x_air_accel = 0.1875*2.5; 
          } 
          else
          {
             x_air_accel = 0.1875*2.5;
          }
          
       // Vertical:                           
          if(state = STATE_HURT){
             y_acceleration = 0.1875;
          }else{
             y_acceleration = y_accel_common;
          }
          
       // Jump:
          jump_strength     = -8    
          jump_release      = -4;     
 
       // Roll:
          roll_deceleration = 0.125;    
          if(speedshoe == 0)
          {
             roll_friction = 0.046875; 
          } 
          else
          {
             roll_friction = 0.046875;
          }
          roll_decel_up     = 0.078125;  
          roll_decel_down   = 0.3125;    
    }
