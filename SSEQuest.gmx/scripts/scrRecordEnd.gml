 //---------------------------------------------\\
 //scrRecordEnd(recordingmode);
 //-----recordingmode-----
 // 2 = Recording. 
 // 1 = Playing.
 //---------------------------------------------\\
 //Played at end of recording/playing session.
 //---------------------------------------------\\  
  if argument0 = 2
    ini_write_real("Main Info","Frames",Frame); 
    
  ini_close();
