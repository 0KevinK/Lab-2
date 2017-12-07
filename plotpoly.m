function plotpoly(coeffs, points)
xV = points(:,1); % x-värden är i points första kolonn
yV = points(:,2);

s = input('Nogrannhet i grafen? ');

steg = (max(xV)-min(xV))/s;

polyX = (min(xV):steg:max(xV)); %ger x värden att beräkna
polyY = polyval(coeffs, polyX); %beräknar ovanstående punkter

plot(polyX, polyY) % plottar grafen som ges av polynomet
hold on
plot(xV, yV, '+') %plottar in punkterna som gavs av anvÃ¤ndaren
end
