/// room_goto_bonus()
//  Goes to a random Bonus stage.

    if(global.player_rings >= 25 && global.player_rings < 50)
    {
    room_goto(rm_bonus3);
    }
    if(global.player_rings >= 50)
    {
    room_goto(rm_bonus1);
    }
/*
    var BonusRoom;
        BonusRoom = choose(1, 3)
        
    switch(BonusRoom){
           case 1:{
            room_goto(rm_bonus1);
            break;
           }
           case 2:{       
            //room_goto(rm_bonus2);     
            //room_goto(rm_bonus3);      
            break;
           }
           case 3:{          
            room_goto(rm_bonus3);       
            break;
           }
    }
