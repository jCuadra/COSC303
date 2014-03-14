function gaussseidel()
A=[-6 1 -1;
    1 -5 1;
    1 1 9];
b=[11;-6;-3];
GSIM=[0 0 0];
persistent x1 x2 x3 flag count iter;
x1=b(1)/A(1,1);
x2=b(2)/A(2,2);
x3=b(3)/A(3,3);
error=[0 0 0];
GSIM=[GSIM;x1 x2 x3];
flag = 1;
count = 0;
iter = 0;
while (flag==1)
    x1=(b(1)-((A(1,2)*x2)+(A(1,3)*x3)))*(1/A(1,1));
    x2=(b(2)-((A(2,1)*x1)+(A(2,3)*x3)))*(1/A(2,2));
    x3=(b(3)-((A(3,1)*x1)+(A(3,2)*x2)))*(1/A(3,3));
    GSIM=[GSIM;x1 x2 x3];
    for i=1:3
        error(i) = abs(GSIM(end,i) - GSIM(end-1,i))/abs(GSIM(end,i));
    end
    for i=1:3
        if(error(i) < (0.5 * (10^-5)))
            count = count + 1;
        end
    end
    if(count == 3)
        flag = 0;
    end
    iter = iter + 1;
    count = 0;
end
GSIM;
disp('Iterations of Gauss-Seidel')
iter
