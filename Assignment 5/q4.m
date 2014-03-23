function q4()
    format long;
    A = [];
    persistent a b;
    a = 1;
    b = 2;
    
    %left hand
    approx = (b - a)*f(a);
    RelativeError = (approx-log(2))/log(2);
    A = [A;approx RelativeError];
    
    %right hand
    approx = (b - a)*f(b);
    RelativeError = (approx-log(2))/log(2);
    A = [A;approx RelativeError];
    
    %midpoint
    approx = (b - a)*f((a+b)/2);
    RelativeError = (approx-log(2))/log(2);
    A = [A;approx RelativeError];
    
    %trapezoid
    approx = (1/2)*(b - a)*(f(a) + f(b));
    RelativeError = (approx-log(2))/log(2); 
    A = [A; approx RelativeError];
    
    %simpsons
    mid = a + ((b-a)/2);
    delta = ((b-a)/2);
    approx = (1/3)*delta*(f(a) + (4*f(mid)) + f(b));
    RelativeError = (approx-log(2))/log(2);
    A = [A;approx RelativeError];
    
    %booles
    delta = ((b-a)/4);
    approx = (2/45)*delta*((7*f(a)) + (32*f(a+delta)) + (12*f(a+(2*delta))) + (32*f(b-delta)) + (7*f(b)));
    RelativeError = (approx-log(2))/log(2);
    A = [A;approx RelativeError];
    
    printmat(A, 'Methods','LeftHand RightHand Midpoint Trapezoid Simpsons Booles','Approx RelativeErr');
    %disptable(A, '|Approximation|Relative Error','Left Hand|Right Hand|Midpoint|Trapezoid|Simpsons|Booles');
    
end

function r = f(x)
    r = (1/x);
    return
end