syms x;
f = 1/(1+exp(-1*x));
g = 1/(1+exp(-6*x));

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

% a0 = 0.5 * int(f,x,-1,1);
% a1 = 1.5 * int(f*p1,x,-1,1);
% a2 = 2.5 * int(f*p2,x,-1,1);
% a3 = 3.5 * int(f*p3,x,-1,1);
% a4 = 4.5 * int(f*p4,x,-1,1);
% a5 = 5.5 * int(f*p5,x,-1,1);
% a6 = 6.5 * int(f*p6,x,-1,1);
% a7 = 7.5 * int(f*p7,x,-1,1);
% % a8 = 8.5 * int(f*p8,x,-1,1);
% % a9 = 9.5 * int(f*p9,x,-1,1);

a0 = 0.5 * int(g,x,-1,1);
a1 = 1.5 * int(g*p1,x,-1,1);
a2 = 2.5 * int(g*p2,x,-1,1);
a3 = 3.5 * int(g*p3,x,-1,1);
a4 = 4.5 * int(g*p4,x,-1,1);
a5 = 5.5 * int(g*p5,x,-1,1);
a6 = 6.5 * int(g*p6,x,-1,1);
a7 = 7.5 * int(g*p7,x,-1,1);
% appr_sig = a0*p0 + a1*p1 + a2*p2 + a3*p3 + a4*p4 + a5*p5 + a6*p6 + a7*p7;

p01 = 1;
p11 = -0.1667*x;
p21 = 0.5*(3*(-0.1667*x)^2 - 1);
p31 = 0.5*(5*(-0.1667*x)^3 - 3*(-0.1667*x));
p41 = (1/8) * (35*(-0.1667*x)^4 - 30*(-0.1667*x)^2 + 3);
p51 = (1/8) * (63*(-0.1667*x)^5 - 70*(-0.1667*x)^3 + 15*(-0.1667*x));
p61 = (1/16) * (231*(-0.1667*x)^6 - 315*(-0.1667*x)^4 +105*(-0.1667*x)^2 - 5);
p71 = (1/16) * (429*(-0.1667*x)^7 - 693*(-0.1667*x)^5 + 315*(-0.1667*x)^3 - 35*(-0.1667*x));

appr_sig = a0*p01 - a1*p11 - a3*p31 + a4*p41 - a5*p51 + a6*p61 - a7*p71;

%for ploting
values = zeros(2001,1);
i = 1 ;
error = zeros(2001,1);
for t = -10:0.01:10
    x = t;
    sub_val = subs(appr_sig);
    if t<-5.78
        sub_val = 0;
    elseif t>5.78
        sub_val = 1;
    end
    values(i) = sub_val;
    error(i) = subs(f) - sub_val;

    i = i+1;
end

% vals  = zeros(1001,1);
% i = 1;
% for t = -5:0.01:5
%     poly = rec_legendre(t,8);
%     leg_point = vpa(a0)*poly(1) + vpa(a1)*poly(2) + vpa(a2)*poly(3) + vpa(a3)*poly(4) + vpa(a4)*poly(5) + vpa(a5)*poly(6) + vpa(a6)*poly(7);
% %     if leg_point < 0
% %         leg_point = 0;
% %     elseif leg_point > 1
% %         leg_point = 1;
% %     end
% % 
%     vals(i) = leg_point;
%     i = i  + 1;
% end
% 
% disp(i);
x1 = -10:0.01:10;
plot(x1,values);
hold on
fplot(f,[-10,10]);
hold off

%plot(x1,error);




