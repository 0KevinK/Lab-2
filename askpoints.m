function points = askpoints()
disp('Ange punkter (retur avslutar inmatningen)')
points = [];
punkt = [];

punkt = input('Ange en punkt ([x y]):');
      while size(punkt) ~= 0 % Om inget gavs i input bryts loopen
      points = [points;punkt(1) punkt(2);]; % lägger till det som gavs i input
      punkt = input('Ange en punkt ([x y]):');
      end
     %matrisen som ges av detta har x-värden i första kolonnen, med
     %motsvarande y-värde i vänsta kolonnen

end
