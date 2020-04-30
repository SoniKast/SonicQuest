// ==== FUNCTION ====================================================================
// scrPlayerActionPoleGrab()
// ==================================================================================
// Ported from the old Sonic Quest, coded by Aleks NB
    
   if(state != STATE_DEATH)
   {
      var _ObjectHandle;
          _ObjectHandle = player_collision_check(COL_MAIN_OBJECT, x, y, obj_wwz_pole_v, -1, -1);
      if(_ObjectHandle != noone)
      {
         if(PoleTimer == -1 && PoleDelay == 0)
         {
            PoleTimer = 60;
            PoleSpeed = y_speed*1.3;
            state     = STATE_POLE_GRAB;
         }
      }
   }
   
   if(state = STATE_POLE_GRAB)
   {
      animation  = "pole grab";
      y_speed    = 0;
      x_speed    = 0;
      if(PoleTimer != 0)
      {
         PoleTimer -= 1; 
      }  
   }
   
   if(PoleTimer == 0){
      PoleTimer  = -1;
      PoleDelay  =  1;
      y_speed    = PoleSpeed;
      animation  = "spring";
      state      = STATE_SPRING;
      alarm[2]   = 5;
   }     
            
