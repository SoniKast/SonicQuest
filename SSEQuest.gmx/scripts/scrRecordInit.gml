 //------------------------------------------------------------------------------------------------------------------------\\
 // scrRecordInit(recordingmode, file);
 //-----recordingmode-----
 // 0 = Recording. 
 // 1 = Playing.
 // 2 = Recording while deleting previous file.
 //-----file-----
 // "file" is the file name of where you would like to record.
 //------------------------------------------------------------------------------------------------------------------------\\
 //This script has to be called whenever the recording or playing of recording is starting, usually in a "create" event.
 //------------------------------------------------------------------------------------------------------------------------\\ 
  if argument0 = 2 // Checks if its recording, and deleting the previous file.
    file_delete(argument1);
 
  ini_open(argument1);//Open file.
  
  if argument0 = 1 
    FrameMax = ini_read_real("Main Info","Frames",0);
    
  Frame = 0; //Set Frame Variable.
