function []=power_method(A,x0,k)
    X = [x0];
    R = [];
    Rn = [];
    for i = 1:k
        x = X(:,i);
        r = A * x;
        R = [R r];
        rn = (norm(r,2));
        Rn = [Rn rn];
        x1 = r / (rn);
        X = [X x1];
    end
    disp(X)
    disp(R)
    disp(Rn)
        
        
