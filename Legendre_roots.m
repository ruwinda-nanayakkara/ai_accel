syms x;

N = 7; % order of the Legendre polynomial
poly = legendreP(N,x);
eqn = poly==0;
G_points = solve(eqn,x,'Real',true); % Roots of the highest order legendre polynomial

