/// scr_collision_check()
 // Checks for collision.

    return (place_meeting(x, y+sign(y_speed), par_solid)) || 
           (y_speed >= 0 && place_meeting(x, y+sign(y_speed), par_platform) && !place_meeting(x, y, par_platform));
 

