%
%
%

function choice = main();
    meny();
    degree=[];
    points=[];
    coeffs=[];
    logic = false;
    while logic == false
        choice = input('\nVälj ett menyval ');
        if choice == 1
            degree= askdegree();
                meny();
        elseif choice == 2
            points=askpoints();
            meny();
        end
        if choice == 3
            if or(isempty(degree),isempty(points))
              disp('Gradtal eller punter är inte definerat.')
              meny();
            else
             coeffs = findcoeffs(degree,points);
             meny();
            end
        end
    
         if choice == 4
             if isempty(coeffs)
                 disp('Koefficienter inte definerat')
                 meny();
             else
             plotpoly(coeffs,points);
             meny();
             end
        end
       if choice == 5
         if isempty(coeffs)
           disp('Koefficienter inte definerat')
           meny();
         else
             polyroots(coeffs);
            meny();
        end
       end
       if choice == 0
           choice == true;
           disp('Hej då')
       end
    end
end
