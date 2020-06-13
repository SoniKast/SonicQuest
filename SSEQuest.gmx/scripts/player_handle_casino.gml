/// player_handle_casino()
 // Script for handling bumpers and flippers
 
//Bumper and Hex Bumper:
bumper_handle = player_collision_check(COL_MAIN_OBJECT, x, y, par_casino_bumper, -1, -1); 
hex_bumper_handle = player_collision_check(COL_MAIN_OBJECT, x, y, par_casino_hex_bumper, -1, -1); 

//Normal Bumper:
if( bumper_handle != noone )
{ 
  angle_to_bumper = degtorad(round(wrap_angle(point_direction(x, y, bumper_handle.x, bumper_handle.y)-90)/22.5)*24);
  x_speed = sin(wrap_angle(angle_to_bumper))*8;
  y_speed = cos(wrap_angle(angle_to_bumper))*8;     
  bumper_handle.bumper_state = 1;
  ground = false; 
};
else if( hex_bumper_handle != noone )
{ 
  angle_to_bumper = degtorad(round(wrap_angle(point_direction(x, y, hex_bumper_handle.x, hex_bumper_handle.y)-90)/22.5)*24);
  x_speed = sin(wrap_angle(angle_to_bumper))*8;
  y_speed = cos(wrap_angle(angle_to_bumper))*8;     
  hex_bumper_handle.bumper_state = 1;
  ground = false; 
};

/* STH2 Flipper */
var flipper_handle_right;
var flipper_handle_left;

flipper_handle_right = player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, par_casino_flipper_r)
flipper_handle_left = player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, par_casino_flipper_l)

/* Right Flipper: */
if( flipper_handle_right != noone )
{
   // Change State:
   state     = STATE_ROLL;
   x_speed    = 1;
   on_flipper = true;
      
   // Activate Flipper:
   if( input_action_pressed )
   {
    //Trigger Animation:
    with( flipper_handle_right ) { image_speed = 0.3 };
    
    //Play Flipper Sound:
    audio_stop_sound(general_flipper);
    audio_stop_sound(player_jump);    
    aud_play_sound(general_flipper, global.sfx_volume, 1, 0, 0);
    
    //Set Player Speed:
    x_speed        = ( (x) - (flipper_handle_right.x) )*0.125;
    y_speed        = -13;
    ground         = false;
   };  
};

/* Left Flipper: */
if( flipper_handle_left != noone )
{
   // Change State:
   state     = STATE_ROLL;
   x_speed    = -1;
   on_flipper = true;   
   
   // Activate Flipper:
   if( input_action_pressed )
   {
    //Trigger Animation:
    with( flipper_handle_left ) { image_speed = 0.3 };
    
    //Play Flipper Sound:
    audio_stop_sound(general_flipper);
    audio_stop_sound(player_jump);
    aud_play_sound(general_flipper, global.sfx_volume, 1, 0, 0);
    
    //Set Player Speed:
    x_speed    = ( (x) - (flipper_handle_left.x) )*0.125;
    y_speed    = -13;
    ground     = false; 
   };  
};

/* Disable Flipper Flag */
if( ground == true )
{
 on_flipper = false;
};
