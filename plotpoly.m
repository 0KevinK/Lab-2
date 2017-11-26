function plotpoly(coeffs, points);
coeffs=[-0.5 4.9 0.5];
points=[1 5; 2 8;3 11;4 12];
Xv=points(:,1);
Yv=points(:,2);
a=input('Steglängd för x-värden?');

x=[min(Xv):a:max(Xv)];
A=polyval(coeffs,x);
plot(x,A)
hold on
plot(Xv,Yv,'+')
end