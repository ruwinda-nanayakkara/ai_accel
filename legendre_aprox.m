% Legendre differentiation


N=20;
[x,D] = legDc(N);

xx = -1:.001:1;
uu = 1./(1+exp(-10*xx));

u = 1./(1+exp(-10*x));

% p = polyfit(x,u,N);
% pp = polyval(p,xx);

% plot(xx,uu);
% hold on
% scatter(x,u);
% hold on
% plot(xx,pp);
% hold off

diff_u = 10*uu.*(1-uu);
plot(xx,diff_u);
hold on

diff_cheb_u = D*u;
scatter(x,diff_cheb_u)
hold on
title('Acual Differentiation vs Pseudo-Spectral Method')
xlabel('x')
ylabel('dy/dx y=sigmod(x)')
legend('Actual values','Approximation')

% p1 = polyfit(x,diff_cheb_u,N);
% pp1 = polyval(p1,xx);
% plot(xx,pp1);