/// player_state_goal();
// Script for the winning/goal action.

   if(ground && goal_state == 1){
      state               = STATE_DEFAULT;
      x_speed             = 0;
      y_speed             = 0;
      x_allow             = false;
      y_allow             = false;
      animation           = "goal";
      animation_direction = 1;
   }   

