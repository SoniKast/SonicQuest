/// player_handle_tornado();
//  Script to handle the Tornado. (Tails' plane)

    // Check if the plane exists:;
       PlaneHandle = player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, obj_tornado);
       
    // Lock the character to the plane:   
       if(PlaneHandle != noone){
          PlaneHandle.x = x+x_speed;  ground=true;
       if keyboard_check(global.key_up){
       PlaneHandle.y -= 2;
       }
       if keyboard_check(global.key_down){
       PlaneHandle.y += 2;
       }
    }
