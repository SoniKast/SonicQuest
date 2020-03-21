
    var counterReference;
    counterReference = interfaceFindControl(interfaceReference, "Counter02");
    

    if (counterReference.counterValue <= 4)
    {
        global.character2 = counterReference.counterValue-1;
    }

