function plotpoly(coeffs, points);
Xv=points(:,1);
Yv=points(:,2);
a=input('Steglängd för x-värden? ');

x=[min(Xv):a:max(Xv)];
A=polyval(coeffs,x);
plot(x,A)
hold on
plot(Xv,Yv,'+')
end
