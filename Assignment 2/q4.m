n=5;x=1:n;pk=ones(1,n);
for i=1:n
    for j=1:n
        if i~=j;
        pk(i) = pk(i)*x(j);
        end
    end
end
pk()