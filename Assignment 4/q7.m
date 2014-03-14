function q7()
format long;
A1=[];
A2=[];
% I had to reduce the number of iterations so that the actual values can be
% seen to someone running this. feel free to uncomment the for loops with
% the correct values to see all the iterations
%for i=0:16
for i=0:10
    A1=[A1;cdh2(1,(10^-i))];
    A2=[A2;cdh4(1,(10^-i))];
end
A1err=[];
A2err=[];
% I had to reduce the number of iterations so that the actual values can be
% seen to someone running this. feel free to uncomment the for loops with
% the correct values to see all the iterations

%for i = 0:17
for i=1:11
    A1err=[A1err;((14.7781-A1(i))/14.7781)];
    A2err=[A2err;((14.7781-A2(i))/14.7781)];
end
disp('Iterations           Relative Error')
a1=[A1 A1err]
disp('Iterations           Relative Error')
a2=[A2 A2err]

% Part C: The second formula approximates xbar the fastest
% Part D: Formula 1: h=10^-3, Formula 2: h=10^-2
end 

function r = f(x)
    r = ((1/2)*exp(2*x));
    return
end
function r = cdh2(x,h)
    r = ((f(x+h) - (2*f(x)) + f(x-h))/(h^2));
    return
end

function r = cdh4(x,h)
    r = (((-1*f(x+(2*h))) + (16*f(x+h)) - (30*f(x)) + (16*f(x-h)) - f(x-(2*h)))/(12*(h^2)));
    return
end