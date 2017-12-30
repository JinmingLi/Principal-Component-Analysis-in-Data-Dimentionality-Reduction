function [U, S] = pca(X)

% Useful values
[m, n] = size(X);

U = zeros(n);
S = zeros(n);


Sigma = X'*X/m; 
[U,S,~] = svd(Sigma);

end
