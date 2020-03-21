
    var counterReference;
    counterReference = interfaceFindControl(interfaceReference, "Counter01");
    

    if (counterReference.counterValue <= 4)
    {
        global.character1 = counterReference.counterValue-1;
    }

