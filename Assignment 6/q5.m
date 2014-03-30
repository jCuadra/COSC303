function q5()
    disp('Answer    Relative Error');
    e1 = eulers(1);
    euler = [e1 abs((e1-sol(1))/sol(1))]; 
    e2 = eulers(0.1);
    euler = [euler;e2 abs((e2-sol(1))/sol(1))];
    e3 = eulers(0.01);
    euler = [euler;e3 abs((e3-sol(1))/sol(1))];
    euler
    
    h1 = heuns(1);
    heun = [h1 abs((h1-sol(1))/sol(1))];
    h2 = heuns(0.1);
    heun = [heun;h2 abs((h2-sol(1))/sol(1))];
    h3 = heuns(0.01);
    heun = [heun;h3 abs((h3-sol(1))/sol(1))];
    heun
    
    rk1 = runge_kutta(1);
    rk = [rk1 abs((rk1-sol(1))/sol(1))];
    rk2 = runge_kutta(0.1);
    rk = [rk;rk2 abs((rk2-sol(1))/sol(1))];
    rk3 = runge_kutta(0.01);
    rk = [rk;rk3 abs((rk2-sol(1))/sol(1))];
    rk
end

function r = f(y,t)
    r = (3*y) + (3*t);
    return
end 
  
function r = runge_kutta(h)
    persistent y t;
    t=0;
    y=1;
    for i=(0+h):h:1
        F1 = f(y,t);
        y1 = y + ((h/2)*F1);
        t1 = t+(h/2);
        
        F2 = f(y1,t1);
        y2 = y + ((h/2)*F2);
        t2 = t1+(h/2);
        
        F3 = f(y2,t2);
        y3 = y + ((h/2)*F3);
        t3 = t2+(h/2);
        
        F4 = f(y3,t3);
        y4 = y + ((h/2)*F4);
        
        y = y + (h*(1/6)*(F1+(2*F2)+(2*F3)+F4));
        t = t+h;
    end
    r = y;
    return
end

function r = eulers(h)
    persistent y t;
    t = 0;
    y = 1;
    for i=(0+h):h:1
        t = t + h;
        y = y + (h*f(y,t));
    end
    r = y;
    return
end

function r = heuns(h)
    persistent y t y_tilde t_tilde;
    t = 0;
    y = 1;
    t_tilde=0;
    y_tilde=1;
    for i=(0+h):h:1
        t_tilde = t + h;
        y_tilde = y + (h*f(y,t));
        y = y + (h * (1/2) * (f(y,t) + f(y_tilde, t_tilde)));
        t = t_tilde;
    end
    r = y;
    return
end

function r = sol(t)
    r = ((4/3)*exp(3*t)) - t - (1/3);
    return
end