/// player_state_goal();
// Script for the winning/goal action.

   if(ground && goal_state == 1){
      state                  = STATE_DEFAULT;
      x_speed                = 0;
      y_speed                = 0;
      global.controller_lock = true;
      animation              = "goal";
   }   

