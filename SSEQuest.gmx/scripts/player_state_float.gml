// ==== FUNCTION ====================================================================
// scrPlayerActionFloat()
// ==================================================================================
//
if(state = STATE_FLOAT)
{
x_speed = 4;
y_speed = 0;
ground = 0;

if(input_up && !player_collision_check(COL_TOP, MASK_SMALL, x, y, angle, -1))
{

y -= 2

}

else if(input_down && !player_collision_check(COL_BOTTOM, MASK_SMALL, x, y, angle, -1))
{

y += 2

}

else
    y_speed = 0;
}
