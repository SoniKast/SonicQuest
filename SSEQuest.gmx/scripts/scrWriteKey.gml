//scrWriteKey(key, keyname, frame number, keytype)

  if(keyboard_check(argument0) = 0 && argument3 = 0)
    exit;
  if(keyboard_check_pressed(argument0) = 0 && argument3 = 1)
    exit;
  if(keyboard_check_released(argument0) = 0 && argument3 = 2)
    exit;       
  switch argument3{
    case 0:
      if keyboard_check(argument0)
        ini_open(working_directory+"\data\demo\demo.rec")
        ini_write_real("Frame"+string(argument2), argument1, 1);
    break;
   
    case 1:
      if keyboard_check_pressed(argument0)
        ini_open(working_directory+"\data\demo\demo.rec")
        ini_write_real("Frame"+string(argument2), string(argument1)+"_pressed", 1);
    break;
  
    case 2:
      if keyboard_check_released(argument0)
        ini_open(working_directory+"\data\demo\demo.rec")
        ini_write_real("Frame"+string(argument2), string(argument1)+"_released", 1);
    break; 
  }
