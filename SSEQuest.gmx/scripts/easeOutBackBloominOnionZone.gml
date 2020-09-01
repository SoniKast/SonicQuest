/// easeOutBack(t)
 // Based on (https://easings.net/#easeOutBack)

    var c1 = 1.70158;
    var c3 = c1 + 1;
    return (1 + c3 * power(argument0 - 1, 3) + c1 * power(argument0 - 1, 2));




