//Delete Me later

    var counterReference;
    counterReference = interfaceFindControl(interfaceReference, "Counter03");
    

    if (counterReference.counterValue <= 1)
    {
        execute_string("global.level_next = roomTTZAct"+string(counterReference.counterValue+1));
    }

