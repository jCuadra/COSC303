function q7()
    A = [];
    t = 0;
    h = 1;
    x = second_order(t+h);
    y = third_order(t+h);
    A = [2 x ((x-f(t+h))/f(t+h)); 3 y ((y-f(t+h))/f(t+h))];
    disp('    Degree    Approx    Error');
    A
end

function r = second_order(h)
    persistent y t;
    t = 0;
    y = 1;
    for i=(0+h):h:1
        t = t + h;
        y = y + (1 - i -((1/2)*(i^2)));
    end
    r = y;
    return
end

function r = third_order(h)
    persistent y t;
    t = 0;
    y = 1;
    for i=(0+h):h:1
        t = t + h;
        y = y + (1 - i -((1/2)*(i^2)) + ((1/6)*(i^3)));
    end
    r = y;
    return
end

function r = f(t)
    r = (-1*exp(-t)) + (t^2) - (2*t) + 2;
    return
end
