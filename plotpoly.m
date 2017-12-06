function plotpoly(coeffs, points)
xV = points(:,1); % x-vÃ¤rden Ã¤r i points fÃ¶rsta kolonn
yV = points(:,2);

s = input('Nogrannhet i grafen? ');

steg = (max(xV)-min(xV))/s;

polyX = (min(xV):steg:max(xV)); %ger x vÃ¤rden att berÃ¤kna
polyY = polyval(coeffs, polyX); %berÃ¤knar ovanstÃ¥ende punkter

plot(polyX, polyY) % plottar grafen som ges av polynomet
hold on
plot(xV, yV, '+') %plottar in punkterna som gavs av anvÃ¤ndaren
end
