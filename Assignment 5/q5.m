function q5()
    compositeTrapezoid()
    compositeSimpsons();
end

function compositeTrapezoid()
    a = 0; b = pi; A = [];
    B = [2 10 100 1000];
    for j=B
        N=j;
        approx = 0;
        delta = ((b-a)/N);
        for i=a:((b-a)/N):b
            if (i == a) || (i == b)
                approx = approx + (f(i)*delta*0.5);
            else
                approx = approx + (2*f(i)*delta*0.5);
            end
        end
        RelErr = ((approx-2)/2);
        A = [A; approx RelErr];
    end
    printmat(A, 'Composite Trapezoid, N','2 10 100 1000','Approx RelativeErr');
end

function compositeSimpsons()
    a = 0; b = pi; A = [];
    B = [1 5 50 500 5000];
    for j=B
        N=j;
        approx = 0;
        delta = ((b-a)/N);
        count = 0;
        for i=a:((b-a)/N):b
            if (i == a) || (i == b)
                approx = approx + (f(i)*delta*(1/3));
            elseif mod(count,2)==0
                approx = approx + (2*f(i)*delta*(1/3));
            else
                approx = approx + (4*f(i)*delta*(1/3));
            end
            count = count+1;
        end
        
        RelErr = ((approx-2)/2);
        A = [A;approx RelErr];
    end
    printmat(A, 'Composite Simpsons','1 5 50 500 5000','Approx RelativeErr');
end

function r = f(x)
    r = sin(x)+cos(x);
    return
end