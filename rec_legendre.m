function [poly_values] = rec_legendre(x,n)
%rec_legendre Generates the values of the legendre ploynomials at a given
%point and order 
%   INPUTS
%       x - value
%       n - highest order of polynomials
%   OUTPUTS
%       poly_values - (n,1) array containing value of each polynomial
poly_values = zeros(n,1);
poly_values(1) = 1;
poly_values(2) = x;

for i = 2:n-1
    poly_values(i+1) =  ((2*i + 1)*x*poly_values(i)-n*poly_values(i-1))/(i+1);
end