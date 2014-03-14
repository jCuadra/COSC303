function jacobi()
A=[-6 1 -1;
    1 -5 1;
    1 1 9];
b=[11;-6;-3];
JIM=[0 0 0];
error=[0 0 0];
persistent x1 x2 x3 flag count iter;
x1=b(1)/A(1,1);
x2=b(2)/A(2,2);
x3=b(3)/A(3,3);
JIM=[JIM;x1 x2 x3];
flag=1;
count = 0;
iter = 0;
while (flag == 1)
    x=x1;
    y=x2;
    z=x3;
    x1=(b(1)-((A(1,2)*y)+(A(1,3)*z)))*(1/A(1,1));
    x2=(b(2)-((A(2,1)*x)+(A(2,3)*z)))*(1/A(2,2));
    x3=(b(3)-((A(3,1)*x)+(A(3,2)*y)))*(1/A(3,3));
    JIM=[JIM;x1 x2 x3];
    for i=1:3
        error(i) = abs(JIM(end,i) - JIM(end-1,i))/abs(JIM(end,i));
    end
    for i=1:3
        if(error(i) < (0.5 * (10^-5)))
            count = count + 1;
        end
    end
    if(count == 3)
        flag = 0;
    end
    count = 0;
    iter = iter + 1;
end
JIM;
disp('Iterations of Jacobi Method')
iter