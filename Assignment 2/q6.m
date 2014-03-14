% Creates upper triangular matrix with my SID (albeit 0 replaced with 9)
SID = [1 2 3 4 5 6 7 8];a=[];
for i=1:8
    a=[a;SID];
    SID(i)=0;
end
a

% Solves upper tri matrix with back sub
b = ones(8,1);
x = zeros(8,1);
n=8;
x(n) = b(n)/a(n,n);
for i=n-1:-1:1
    x(i)=(b(i)-a(i,i+1:n)*x(i+1:n))/a(i,i);
end
x()
