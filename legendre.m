% Legendre polynomial approximation
syms x;
f = 1/(1+exp(-1*x));

p0 = 1;
p1 = x;
p2 = 0.5*(3*x^2 - 1);
p3 = 0.5*(5*x^3 - 3*x);
p4 = (1/8) * (35*x^4 - 30*x^2 + 3);
p5 = (1/8) * (63*x^5 - 70*x^3 + 15*x);
p6 = (1/16) * (231*x^6 - 315*x^4 +105*x^2 - 5);
p7 = (1/16) * (429*x^7 - 693*x^5 + 315*x^3 - 35*x);
p8 = (1/128) * (6435*x^8 -12012*x^6 + 6930*x^4 - 1260*x^2 + 35);
p9 = (1/128) * (12155*x^9 - 25740*x^7 + 18018*x^5 -4620*x*3 + 315*x);

a0 = 0.5 * int(f,x,-1,1);
a1 = 1.5 * int(f*p1,x,-1,1);
a2 = 2.5 * int(f*p2,x,-1,1);
a3 = 3.5 * int(f*p3,x,-1,1);
a4 = 4.5 * int(f*p4,x,-1,1);
a5 = 5.5 * int(f*p5,x,-1,1);
a6 = 6.5 * int(f*p6,x,-1,1);
a7 = 7.5 * int(f*p7,x,-1,1);
a8 = 8.5 * int(f*p8,x,-1,1);
a9 = 9.5 * int(f*p9,x,-1,1);

appr_sig = a0*p0 + a1*p1 + a2*p2 + a3*p3 + a4*p4 + a5*p5 + a6*p6 + a7*p7; % a8*p8 + a9*p9;
disp([vpa(a0) vpa(a1) vpa(a2) vpa(a3)]);
%disp(appr_sig)

fplot([appr_sig f],[-5,5]);
legend('Approximation', 'sigmoid')

n = 1;
Ln_2 = (2*n+1)/(n+1)*x*p1 - n/(n+1)*p0;
disp(simplify(Ln_2));

