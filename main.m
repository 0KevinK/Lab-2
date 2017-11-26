%
%
%

function choice = main();
    meny();
    degree=[];
    points=[];
    while true
        choice = input('\nVälj ett menyval')
        if choice == 1
            askdegree();
        elseif choice == 2
            askpoints();
        end
    %if ~isempty(degree) && ~isempty(points)
        if choice == 3
            if ~isempty(degree) && ~isempty(points)
                disp('Gradtalet och/eller punkterna är inte definerade')
            end
        
           coeffs = findcoeffs(degree,points)
       
        end
    end
    if ~isempty(degree) && ~isempty(points) && ~isempty(coeffs)
         if choice == 4
             plotpoly(coeffs,points);
        end
        if choice == 5
             polyroots(coeffs);
        end
             
    end
end