/// room_goto_bonus()
//  Goes to a random Bonus stage.

    var BonusRoom;
        BonusRoom = choose(1, 2)
        
    switch(BonusRoom){
           case 1:{
            room_goto(rm_bonus1);
            break;
           }
           case 2:{       
            //room_goto(rm_bonus2);     
            room_goto(rm_bonus3);      
            break;
           }
           /*case 3:{          
            room_goto(rm_bonus3); 
            //room_goto(rm_bonus1);           
            break;
           }*/
    }
