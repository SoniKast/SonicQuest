if state != STATE_DEATH{
if player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, par_slipping_right){
ground = false
x_speed = 5.5
y_speed = 1
animation = "hurt"
animation_direction = 1
input_alarm = 0
state = STATE_SLIPPING;
}
else{
state = STATE_DEFAULT;
}
}
