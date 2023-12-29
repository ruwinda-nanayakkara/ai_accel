% Chebyshev polynomials approximation
syms x;
f = 1/(1+exp(-1*x));

t0 = 1;
t1 = x;
t2 = 2*x^2 -1;
t3 = 4*x^3 -3*x;
t4 = 8*x^4 - 8*x^2 + 1;
t5 = 16*x^5 - 20*x^3 + 5*x;

a0 = (1/pi) * int(sqrt(1-x^2)*f*t0,x,-1,1);
a1 = (2/pi) * int(sqrt(1-x^2)*f*t1,x,-1,1);
a2 = (2/pi) * int(sqrt(1-x^2)*f*t2,x,-1,1);
a3 = (2/pi) * int(sqrt(1-x^2)*f*t3,x,-1,1);
a4 = (2/pi) * int(sqrt(1-x^2)*f*t4,x,-1,1);
a5 = (2/pi) * int(sqrt(1-x^2)*f*t5,x,-1,1);

appr_sig = a0*t0 + a1*t1 + a2*t2 + a3*t3+ a4*t4 + a5*t5;
disp([vpa(a0,10) vpa(a1,10) vpa(a2) vpa(a3)]);
disp(simplify(appr_sig))


f2 = 0.25 + 0.06 * t1 - 0.25 * t2 - 0.06123*t3 ;
fplot(appr_sig);
% legend('Approximation')
