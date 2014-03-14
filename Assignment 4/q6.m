function q6()
A1=[];
A2=[];
A3=[];
for i=0:16
    A1=[A1;dd(1,(10^-i))];
    A2=[A2;cdh2(1,(10^-i))];
    A3=[A3;cdh4(1,(10^-i))];
end
A1err=[];
A2err=[];
A3err=[];
for i=1:17
    A1err=[A1err;((7.38906-A1(i))/7.38906)];
    A2err=[A2err;((7.38906-A2(i))/7.38906)];
    A3err=[A3err;((7.38906-A3(i))/7.38906)];
end
disp('Iterations     Relative Error')
a1=[A1 A1err]
disp('Iterations     Relative Error')
a2=[A2 A2err]
disp('Iterations     Relative Error')
a3=[A3 A3err]

% Part C: the third formula approximates xbar the fastest
% Part D: Formula 1: h = 10^-5, Formula 2: h = 10^-3, Formula 3: h = 10^-2
end 

function r = f(x)
    r = ((1/2)*exp(2*x));
    return
end

function r = dd(x,h)
    r = ((f(x+h) - f(x))/h);
    return
end

function r = cdh2(x,h)
    r = ((f(x+h) - f(x-h))/(2*h));
    return
end

function r = cdh4(x,h)
    r = (((-1*f(x+(2*h))) + (8*f(x+h)) - (8*f(x-h)) + f(x-(2*h)))/(12*h));
    return
end