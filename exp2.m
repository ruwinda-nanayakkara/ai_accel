syms x;

f =1/(1+exp(-x));
g = 0;

for i=0:6
    g = g + (-x)^i/factorial(i);
end

h = 1/(1+g);

fplot(f,[-8,8],'b--');
hold on
fplot(h,[-8,8],'k');
grid on
title("Taylor Approximation")
legend('Exact Sigmoid','6th Order Taylor Approximation');