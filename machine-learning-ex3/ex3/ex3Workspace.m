clear ; close all; clc

%% Setup the parameters you will use for this part of the exercise
input_layer_size  = 400;  % 20x20 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10
                          % (note that we have mapped "0" to label 10)

load('ex3data1.mat'); % training data stored in arrays X, y



theta_t = [-2; -1; 1; 2];
X_t = [ones(5,1) reshape(1:15,5,3)/10];
y_t = ([1;0;1;0;1] >= 0.5);
lambda_t = 3;

m = length(y_t); % number of training examples
J = 0;
grad = zeros(size(theta_t));

fprintf('Expected cost: 2.534819\n');




sig = 1.0 ./ (1.0 + exp(-(X_t*theta_t)));
cost = y_t*log(sig')+(1-y_t)*log(1-sig');

test = sum(cost(:));

J = ((-1/m)*sum(cost(:))) + ((lambda_t/(2*m))*sum(theta_t.^ 2));
%grad = (1 / m) .* (X_t' * (sig - y_t)) + (lambda_t / m) * theta_t;


%grad = grad(:);

