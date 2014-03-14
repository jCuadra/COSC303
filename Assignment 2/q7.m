Dim=zeros(1,10);
Time=zeros(1,10);
for n=1:10
    iTime = tic;
    U=rand(n,n);
    A=U;
    i=1;
    for j=1:n-1
        for k=i+1:n
            t = -1*(U(k,j)/U(i,j));
            for l=j:n
                U(k,l) = U(k,l) + (t*U(i,l));
            end
        end
        i = i+1;
    end
    Time(n)=toc(iTime);
    Dim(n)=n;
    % Because A = LU, we can get L with matrix division
    L = A/U;
    U
    L
end
scatter(Dim,Time);