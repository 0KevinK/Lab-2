function coeffs = findcoeffs(degree, points)
nyDegree = degree + 1; %ger polynometsgrad
rader = length(points(:, 1)); %ger antalet rader i designmatrisen
x = points(:, 1);
y = points(:, 2);
design = zeros(rader,nyDegree); %skapar en nollmatris som en grund för designmatrisen

for k = 1:nyDegree
    design(:, k)=x.^(nyDegree-k);
end
coeffs = design \ y; %Gauss-Jordan elimination fÃ¶r att lÃ¶sa koefficienter
end
