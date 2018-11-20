function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
m = length(X);
##distance=zeros(K,1);
##
##for i=1:m 
##  % training example
##  sample=X(i, :); 
##  for j=1:K            
##    sampleCentroid=centroids(j, :);
##    % Compute the norm
##    sampleNorm =  sqrt(sample'*sample);
##    sampleCentroidNorm = sqrt(sampleCentroid'*sampleCentroid);
##    
##    %Compute the distance
##    distance(j) = (sum(sampleNorm(:))-sum(sampleCentroidNorm(:)))^2;
##  endfor
##  %Get the minimum value and index
##  [val, index] = min(distance);
##  
##  %Assign the index of the minimum value
##  idx(i) =  index(1, 1);
##endfor


distances=zeros(m, K);

for j=1:K            
  sampleCentroid=centroids(j, :);
  distance = sum(bsxfun(@minus, X, sampleCentroid).^2, 2);
  distances(:, j) = distance;
endfor 

[val idx] = min(distances, [], 2);


% =============================================================
end

