function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 2);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    h = theta' * X';
    err = h-y';
    thetaTemp = theta-alpha*(1/m)*sum(err*X);  
    thetaTemp2 = theta-((alpha/m)*(X'*((X*theta)-y))); #investigate why the values are different
    theta = thetaTemp2;  
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter,1) = iter;
    J_history(iter,2) = computeCostMulti(X, y, theta);

end

end