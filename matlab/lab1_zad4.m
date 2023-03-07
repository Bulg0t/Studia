clear all;
close all;
row = 3;
cols = 5;
f = zeros(row,cols);
for i=1:row
    for j=1:cols
        f(i,j) = sqrt(1+(i/j));
    end
end

A = [1,2;3,4];
B = [5,6;7,8];
C = A*B
D = A.*B
