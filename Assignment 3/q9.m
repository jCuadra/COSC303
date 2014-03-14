function q9()
disp('Bisection method to 12 significant digits')
A=[];
persistent a b eq iterations;
a = 0;
b = 1;
A = [A;(a + b)/2];
eq = 0;
iterations = 0;
while(eq == 0)
    iterations = iterations + 1;
    f_a = (a^cos(a))-(a^a);
    f_b = (b^cos(b))-(b^b);
    c = (a + b)/2;
    f_c = (c^cos(c))-(c^c);
    if f_c < 0
        a = c;
    end
    if f_c > 0
        b = c; 
    end
    A = [A;(a + b)/2];
    if(roundn(A(end), -12) == roundn(A(end-1), -12))
        eq = 1;
    end
end

iterations
A(end)