function centroids = computeCentroids(X, idx, K)

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


for k = 1:K 
	ind = find(idx == k); 
	centroids(k, :) = mean(X(ind, :)); 
end

end

