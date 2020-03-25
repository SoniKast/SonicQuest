// ==== FUNCTION ====================================================================
// scrPlayerActionFloat()
// ==================================================================================
//
if(state = STATE_FLOAT_V)
{
x_speed = 0;
y_speed = -4;
ground = 0;

if(input_left && !player_collision_check(COL_LEFT, MASK_SMALL, x, y, angle, -1))
{

x -= 2

}

else if(input_right && !player_collision_check(COL_RIGHT, MASK_SMALL, x, y, angle, -1))
{

x += 2

}

else
    x_speed = 0;
}
