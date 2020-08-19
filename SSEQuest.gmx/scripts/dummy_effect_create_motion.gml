/// dummy_effect_create_motion(sprite, image speed, x, y, depth, looptimes, direction, speed, gravity)
 // Creates a dummy effect.
 
    var dummyFX;
    dummyFX = instance_create(argument2, argument3, obj_dummy_effect)
    dummyFX . sprite_index = argument0;
    dummyFX . image_speed  = argument1;
    dummyFX . depth        = argument4;
    dummyFX . loop_times   = argument5;
    dummyFX . _dir   = argument6;
    dummyFX . _speed   = argument7;
    dummyFX . gravity = argument8;
    with dummyFX
    {
        motion_set(_dir, _speed)
    }

