function [D,x] = leg(N)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
syms y;
p = legendreP(N,y);
eqn=p==0;

x = double(solve(eqn,y));
x1 = double(solve(eqn,y,'Real',true));
D=ones(N);
for i=1:N
    for j=1:N
        if i~=j
            a = legendreP(N,x(i));
            b = legendreP(N,x(j));
            c = a/b;

            D(i,j) = c/(x(i)-x(j));
%             D(i,j) = -N*(N+1)/4;
        elseif i==1 && j==1
            D(i,j) = -N*(N+1)/4;
        elseif i==N && j==N
            D(i,j) = N*(N+1)/4;
        else
            D(i,j) = 0;
        end
    end
end