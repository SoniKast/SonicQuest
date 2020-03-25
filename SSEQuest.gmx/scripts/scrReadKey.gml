//scrReadKey(keyname, frame number, keytype)

  var FrameNum, Result;
  FrameNum = argument1;
  Result = 0;
  switch argument2{
  
    case 0:
      ini_open(working_directory+"\data\demo\demo.rec")
      Result = ini_read_real("Frame"+string(FrameNum),argument0,0);
    break;
   
    case 1:
      ini_open(working_directory+"\data\demo\demo.rec")
      Result = ini_read_real("Frame"+string(FrameNum),string(argument0)+"_pressed",0);
    break;
  
    case 2:
      ini_open(working_directory+"\data\demo\demo.rec")
      Result = ini_read_real("Frame"+string(FrameNum),string(argument0)+"_released",0);
    break;
  }
  
  return Result;
  
  
