function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
X_norm2 = X;
mu = zeros(1, size(X, 2));
mu2 = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
sigma2 = zeros(1, size(X, 2));
n = size(X, 2);
m = size(X, 1);
% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
% 
# Get the mean and standard deviation for each feature

# My Version
#{
for i=1:n
  mu(:, i) = mean(X(:, i));
  sigma(:, i) = std(X(:, i));
endfor


# Normalize each feature and assign the vecotr to the matrix
for j=1:m
  val = (X(j, :)-mu); 
  X_norm(j, :) = val;
endfor
#}

p = size(X);
for i = 1:p(2)
	mu2(i) = mean(X(:,i));
	sigma2(i) = std(X(:,i));
	for j = 1:p(1)
		X_norm(j,i) = (X(j,i) - mu2(i))/sigma2(i);
	end;
end;





% ============================================================

end
