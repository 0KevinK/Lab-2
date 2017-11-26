function points=askpoints()
disp('Ange punkter (retur avslutar inmatningen)')
points=[];
A=[];

     A=input('Ange en punkt ([x y]):')
      while size(A) ~= 0 % Om inget gavs i input bryts loopen
      points=[points;A(1) A(2);] % lägger till det som gavs i input
      A=input('Ange en punkt ([x y]):')
      end
    %matrisen som ges av detta har x-värden i första kolonnen, med
    %motsvarande y-värde i vänsta kolonnen

end