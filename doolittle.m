function []=doolittle(A)
n = size(A);
U=zeros(n);
L=zeros(n);
for k=1:n
    L(k,k)=1;
    for j=k:n
        s1=0;
        for s = 1:k-1
            s1 = s1 + L(k,s)*U(s,j);
        end
        U(k,j) = A(k,j)-s1;
    end
    for i=k+1:n
        s2=0;
        for s = 1:k-1
            s2 = s2 + L(i,s)*U(s,k);
        end
        L(i,k) = (A(i,k)-s2)/U(k,k);
    end
end
disp(L)
disp(U)
    
