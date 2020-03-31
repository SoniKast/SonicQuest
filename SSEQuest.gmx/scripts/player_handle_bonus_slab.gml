/// player_handle_bonus_slab

bonus_slab = player_collision_check(COL_MAIN_OBJECT, x, y, par_bonus_slab, -1, -1);

//Normal Bumper:
if( bonus_slab != noone )
{ 
  angle_to_bumper = degtorad(round(wrap_angle(point_direction(x, y, bonus_slab.x, bonus_slab.y)-90)/22.5)*24);
  x_speed = sin(wrap_angle(angle_to_bumper))*8;
  y_speed = cos(wrap_angle(angle_to_bumper))*8;     
  if(bonus_slab.object_hp != 0)
  {
  bonus_slab.object_hp -= 1;
  aud_play_sound(general_slab, global.sfx_volume, 1, 0, 0);
  }
  ground = false; 
};
   
// Gumball:   
    Gumball  = player_collision_check(COL_MAIN_OBJECT, x, y, obj_gumballs, -1, -1);
        with(Gumball){
             Collected = 1;
             instance_destroy();
     }
    
// Machine Rod:   
    Rod = player_collision_check(COL_MAIN_OBJECT, x, y, obj_bonus_ball, -1, -1);
      if(Rod != noone){
         if(Rod.Triggered == false && Rod.alarm[0] = -1){
            Rod.Triggered = true;
            Rod.alarm[0] = 1;
         }
      }
