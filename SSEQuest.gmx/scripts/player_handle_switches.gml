/// player_handle_switches()
// R.I.P. Sonic X-Treme. Idk why I put this here, though.
// Oh yeah btw this was ported from GMate

if(other.player_type == IS_PLAYER)
{
switch_nearest = instance_nearest(x,y, par_switches);
switch_handle  = player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, switch_nearest);

/* Hit Switch: */
if( switch_handle != noone )
{
 with( switch_nearest )
  {
   switch_pressed = 1;
  };
  angle = 0;
};
else if( switch_handle == noone )
{
 with( switch_nearest )
  {
   switch_pressed = 0;
   switch_timer   = 0;
  };
};
};
