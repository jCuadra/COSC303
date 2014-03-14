function q8()
format long;


persistent DEGREE C;
C=[];
% Create an evenly spaced distribution for interval 0->1
for DEGREE = 2:10
    A=[zeros(DEGREE+1)];
    interval=[];
    for i=0:1/DEGREE:1
        interval=[interval i];
    end

    % Generate first column
    for i=1:DEGREE+1
        A(i,1) = f(interval(i));
    end

    for i = 2:DEGREE+1
        for j = i:DEGREE+1
            A(j,i) = ((A(j,i-1)-A(j-1,i-1))/(interval(j) - interval(j-(i-1))));
        end
    end
    A;
    % Pull out the diagonal values
    B=[];
    for i=1:DEGREE+1
        B=[B A(i,i)];
    end
    
    % Evaluate the polynomial
    %persistent P;
    % set first value
    P = B(1);
    
    %
    % Eval at f(0.5)
    %
    x=0.5;
    for i=1:DEGREE
        y=B(i+1);
        for j=1:i
            y = y*(x-j);
        end
        P = P + y;
    end
    C = [C;P];
    P
    RE = (C(end)-cos(x))/cos(x)
    disp('----------------------------------------');
end
end

function r = f(x)
    r = cos(x);
    return
end
