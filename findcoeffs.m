function coeffs = findcoeffs(degree, points);
N = degree; %ger polynometsgrad
m = length(points(:,1)); %ger antalet rader i designmatrisen
x = points(:,1);
y = points(:,2);
design = zeros(m,N+1); %skapar en nollmatris som en för designmatrisen
                       %N+1 då t.ex x^2+x+c ger N=2 men det krävs 3
                       %kolonner
for k = 1:N+1
    design(:,k)=x.^(N+1-k);
end;
coeffs = design \ y; %Gauss-Jordan elimination för att lösa koefficienter
end
