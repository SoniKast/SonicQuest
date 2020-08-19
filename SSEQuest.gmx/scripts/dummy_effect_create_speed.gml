/// dummy_effect_create_speed(sprite, image speed, x, y, depth, looptimes, hspeed, vspeed, gravity)
 // Creates a dummy effect.
 
    var dummyFX;
    dummyFX = instance_create(argument2, argument3, obj_dummy_effect)
    dummyFX . sprite_index = argument0;
    dummyFX . image_speed  = argument1;
    dummyFX . depth        = argument4;
    dummyFX . loop_times   = argument5;
    dummyFX . hspeed   = argument6;
    dummyFX . vspeed   = argument7;
    dummyFX . gravity = argument8;

