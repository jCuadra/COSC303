function q8()

%squareroot of 25 is 5, so lets guess sqrt(27) is ~5.1

persistent x sig_dig i;
x = 5.1;
sig_dig = 0;
A = [x sig_dig];
for i=1:5
    x = (x + (27/x))/2;
    Rp = (x-sqrt(27))/sqrt(27);
    i = 15;
    loop = 1;
    while loop == 1
        if Rp < (0.5*(10^-i))
            sig_dig = i;
            loop = 0;
        end
        i = i-1;
    end
    A = [A;x sig_dig];
end
disp('Approx      Sig digs')
A