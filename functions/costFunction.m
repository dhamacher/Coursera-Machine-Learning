# addpath('C:\Users\dhamacher\Documents\GitHub\Octave-ML\functions')
# The cost function
function J = costFunction(x, y, theta)
% X is the "design matrix" with our training examples
% y is the class labels
% theta is the paramter vector

n = size(x,1); % number of training examples
predictions = x*theta; % Prediction of hypothesis
sqrErrors = (predictions-y).^2; % Squared errors

J = 1/n * sum(sqrErrors);