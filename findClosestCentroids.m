function idx = findClosestCentroids(X, centroids)
% Set K
K = size(centroids, 1);

idx = zeros(size(X,1), 1);


m = size(X, 1); 
len = zeros(K, 1); 
for i = 1:m 
	for j = 1:K 
        len(j) = norm(X(i, :) - centroids(j, :))^2; 
    end 
	[~, idx(i)] = min(len); 
end

end

