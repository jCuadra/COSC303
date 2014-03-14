function q7()

disp('Newton Raphson')
disp('Answer      Relative Error')
persistent x Rk;
x = 1.9;
Rk = 0;
A1 = [x Rk];
for k = 1:5
    g_x = -4 + (4 * x) - ((x ^ 2)/2);
    gp_x = 4 - x;
    x = x - (g_x/gp_x);
    Rk = ((x - A1(end,1))/A1(end,1));
    A1 = [A1;x Rk];
end

x = 2.1;
Rk = 0;
A2 = [x Rk];
for k = 1:5
    g_x = -4 + (4 * x) - ((x ^ 2)/2);
    gp_x = 4 - x;
    x = x - (g_x/gp_x);
    Rk = ((x - A2(end,1))/A2(end,1));
    A2 = [A2;x Rk];
end

x = 3.8;
Rk = 0;
A3 = [x Rk];
for k = 1:5
    g_x = -4 + (4 * x) - ((x ^ 2)/2);
    gp_x = 4 - x;
    x = x - (g_x/gp_x);
    Rk = ((x - A3(end,1))/A3(end,1));
    A3 = [A3;x Rk];
end

x = 4.2;
Rk = 0;
A4 = [x Rk];
for k = 1:5
    g_x = -4 + (4 * x) - ((x ^ 2)/2);
    gp_x = 4 - x;
    x = x - (g_x/gp_x);
    Rk = ((x - A4(end,1))/A4(end,1));
    A4 = [A4;x Rk];
end

A1
A2
A3
A4

% To summarize, we can conclude that a starting point for an iterative
% method must be sufficiently "close" to what the function converges to
% for it to converge and not have a large amount of error.