A = [0.5 0.2 0;0.2 0.5 0.2;0 0.2 0.5]; %输入迭代公式中的矩阵
r1 = [1 0 0]'; %迭代公式中的余项，因此处所求为逆矩阵，设置为如下三个r，使得B*B-1=I
r2 = [0 1 0]';
r3 = [0 0 1]';
I = eye(3);
B = I - A;  %求B的逆
k = 100;  %迭代次数
x0= [0 0 0]';  %迭代第一项
x1 = [x0]; % 以下存储结果
x2 = [x0];
x3 = [x0];

for i=1:k
    x = x1(:,i);
    newx = B * x + r1;
    x1 = [x1 newx];
end

for i=1:k
    xx = x2(:,i);
    newxx = B * xx + r2;
    x2 = [x2 newxx];
end

for i=1:k
    xxx = x3(:,i);
    newxxx = B * xxx + r3;
    x3 = [x3 newxxx];
end

result = [x1(:,k+1) x2(:,k+1) x3(:,k+1)];
disp(result);

    