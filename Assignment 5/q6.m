function q6()
    format long;
    a = -1;
    b = 1;
    eps = 0.0001;
    adquad(a,b,eps)
end

function r = adquad(a,b,eps)
    delta = ((b-a)/4);
    coeff = (1/sqrt(2*pi));
    S1 = coeff*(1/3)*((b-a)/2)*(f(a) + (4*f((b+a)/2)) + f(b));
    S2 = coeff*(1/3)*delta*(f(a) + (4*f(a+delta)) + (2*f(a+(2*delta))) + (4*f(a+(3*delta))) + f(b));

    if abs(S2-S1) < eps
        r = S2;
        return
    else
        r = adquad(a, ((a+b)/2), (eps/2)) + adquad(((a+b)/2),b,(eps/2));
        return
    end
end

function r = f(x)
    r = exp((-x^2)/2);
    return
end