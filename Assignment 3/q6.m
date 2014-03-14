function q6()
A=[];
persistent a b eq iterations;
a = 1;
b = 2;
A = [A;(a + b)/2];
eq = 0;
iterations = 0;
while(eq == 0)
    iterations = iterations + 1;
    f_a = exp(a) - a -2;
    f_b = exp(b) - b -2;
    c = (a + b)/2;
    f_c = exp(c) - c -2;
    if f_c < 0
        a = c;
    end
    if f_c > 0
        b = c; 
    end
    A = [A;(a + b)/2];
    if(roundn(A(end), -4) == roundn(A(end-1), -4))
        eq = 1;
    end
end
disp('Bisection method')
iterations
A(end)




A = [];
eq = 0;
iterations = 0;
a = 1; b = 2;
f_a = exp(a) - a -2;
f_b = exp(b) - b -2;
c = (a -(((f_a)*(b - a))/(f_b - f_a)));
f_c = exp(c) - c - 2;
if (f_c * f_a) > 0
    a = c;
elseif(f_c * f_b) < 0
    b = c;
end
A = [A;c];
while(eq == 0)
   iterations = iterations + 1;
   f_a = exp(a) - a -2;
   f_b = exp(b) - b -2;
   c = a - ((f_a*(b - a))/(f_b - f_a));
   f_c = exp(c) - c - 2;
   if (f_c * f_a) > 0
       a = c;
   elseif (f_c * f_b) < 0
       b = c;
   end
   A = [A;c];
   if(roundn(A(end), -4) == roundn(A(end-1), -4))
        eq = 1;
   end
end
disp('False Position Method') 
iterations
A(end)