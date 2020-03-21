
    var imageReference;
    imageReference = interfaceFindControl(interfaceReference, "Picture01");
    
    switch(selectedControl)
    {
        case 16:
        case 17:
        case 18:
            imageReference.imageIndex = 7;
            break;
        case 19:
            imageReference.imageIndex = 8;
            break;
        case 20:
            imageReference.imageIndex = 9;
            break;        
        case 21:
            imageReference.imageIndex = 10;
            break;
        case 22:
            imageReference.imageIndex = 11;
            break;
        case 23:
            imageReference.imageIndex = 12;
            break;
        default:
            imageReference.imageIndex = floor(selectedControl/2);
            break;        
    }
     
