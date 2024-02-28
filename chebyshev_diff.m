% Chebyshev differentiation of a smooth function

xx = -4:0.01:4;
uu = 1./(1+exp(-4*xx)); clf
N = 20;
[D,x] = cheb(N);
u = 1./(1+exp(-4*x));
plot(x,u,'.','MarkerSize',14), grid on
line(xx,uu)

