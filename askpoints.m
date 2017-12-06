function points = askpoints()
disp('Ange punkter (retur avslutar inmatningen)')
points = [];
punkt = [];

punkt = input('Ange en punkt ([x y]):');
while size(punkt) ~= 0 % Om inget gavs i input bryts loopen
    points = [points;punkt(1) punkt(2);]; % lÃ¤gger till det som gavs i input
    punkt = input('Ange en punkt ([x y]):');
end
     %matrisen som ges av detta har x-vÃ¤rden i fÃ¶rsta kolonnen, med
     %motsvarande y-vÃ¤rde i vÃ¤nsta kolonnen

end
