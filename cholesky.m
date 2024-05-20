function []=cholesky(A)
n =size(A);
L = zeros(n);
for k = 1:n
    s1 = 0;
    for s = 1:k-1
        s1 = s1 + (L(k,s))^2;
    end
    L(k,k) = sqrt(A(k,k) - s1);
    for i = k+1:n
        s2 = 0;
        for s = 1:k-1
            s2 = s2 + (L(i,s)*L(k,s));
        end
        L(i,k) = (A(i,k) - s2)/ L(k,k);
    end
end
disp(L)