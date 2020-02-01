/// player_handle_bonus_slab

bonus_slab = player_collision_check(COL_MAIN_OBJECT, x, y, par_bonus_slab, -1, -1);

//Normal Bumper:
if( bonus_slab != noone )
{ 
  x_speed = sin(wrap_angle(angle_to_bumper))*8;
  y_speed = cos(wrap_angle(angle_to_bumper))*8;     
  bonus_slab.object_hp -= 1;
  ground = false; 
};
