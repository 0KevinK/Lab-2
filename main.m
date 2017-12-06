% SF1511 Lab 2
% Karl Hallberg
% Kevin KihlstrÃ¶m
 
function choice = main()
    meny();
    degree=[];
    points=[];
    coeffs=[];
    logic = false;
    while logic == false
        choice = input('\nVälj ett menyval: ');
        if choice == 1
            degree= askdegree();
                meny();
        elseif choice == 2
            points=askpoints();
            meny();
        end
        if choice == 3
            if or(isempty(degree),isempty(points))
              fprintf('\nGradtal eller punter är inte definerat.\n')
              meny();
            else
             coeffs = findcoeffs(degree,points)
             meny();
            end
        end
   
         if choice == 4
             if isempty(coeffs)
                 fprintf('\nKoefficienter inte definerat\n')
                 meny();
             else
             plotpoly(coeffs,points);
             meny();
             end
        end
       if choice == 5
         if isempty(coeffs)
           fprintf('Koefficienter inte definerat')
           meny();
         else
             polyroots(coeffs);
            meny();
        end
       end
       if choice == 0
           logic = true;
           fprintf('\nHej då\n');
       end
    end
end
