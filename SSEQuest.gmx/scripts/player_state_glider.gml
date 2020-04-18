/// player_state_glider()
// The players state when gliding (coded by Super Tails)

if (state == STATE_GLIDER)
  {
  x=obj_glider_parent.x
  y=obj_glider_parent.y
  x_speed=0
  y_speed=0
  ground=false
  if(ground)
  {
  state=STATE_DEFAULT
  }
  if(input_action_pressed)
  {
  if(state!=STATE_JUMP)
  state=STATE_JUMP; 
  y_speed=6.25; 
  obj_glider_parent.destroy=true
  }
  }
