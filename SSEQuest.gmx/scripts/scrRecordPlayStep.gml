//---------------------------------------------\\
//scrRecordPlayStep()
//---------------------------------------------\\
//Played in step event when playing a recording.
//---------------------------------------------\\  
   
    Frame +=1;   
    
    if Frame = FrameMax{
      with(instance_create(0, 0, obj_fade_to_value))
      {
            value = rm_title;
      }
    }
    
