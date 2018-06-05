# addpath('C:\Users\dhamacher\Documents\GitHub\Octave-ML\functions')
# The cost function
function J = costFunction(X, y, theta)
% X is the "design matrix" with our training examples
% y is the class labels
% theta is the paramter vector

m = size(X,1); % number of training examples
predictions = X*theta; % Prediction of hypothesis
sqrErrors = (predictions-y).^2; % Squared errors

J = 1/(2*m) * sum(sqrErrors);