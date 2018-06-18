#cd input
#data = load('titanic_train.dat');
         
# Classification outcome in two classes: alive 1 and dead 0         
#y = horzcat(data(:, 9), data(:, 9), data(:, 9), data(:, 9));
y = data(:, 9);

# The design matrix
x = data(:, 1:4)';

# Number of samples
m = size(x, 1); 

# The paramter vector
theta = zeros(size(x, 1), 1);

# the hypothesis
h = 1./(1+e.^(-theta'*x));

# Value of the cost function
C = -(y*log(h)-(1-y)*log(1-h));

# Sum of the cost
sum_of_C = sum(C);

# New parameters
J = -(1/m)*sum_of_C;

# Update parameters





