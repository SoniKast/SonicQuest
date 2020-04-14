/// player_handle_glider();
 // Used to handle gliders. Coded by Super Tails.
 
handle = player_collision_check(COL_MAIN_OBJECT, x, y, obj_glider_parent, -1, -1);

if (handle != noone && state != STATE_HURT)
{
  with(handle) 
  {
  image_speed = 0.15;
  hspeed      = glider_x;
  vspeed      = glider_y;
  }
  state = STATE_GLIDER 
  if (state != STATE_GLIDER)
  {
    aud_play_sound(player_hang, global.sfx_volume, 1, 0, 0)
  }
}
