# Set the workspace
#cd '..\Octave-ML'

brainhead = load('.\input\brainhead.dat');
headSize = brainhead(:, [3]);       #x (our parameter)
brainWeight = brainhead(:, [4]);    #y

# Feature Scaling
# X = horzcat([x0, (x-min(x))/(max(x)-min(x))]);
x = (headSize-min(headSize))/(max(headSize)-min(headSize));
# x0 = ones(size(x), 1);
y = (brainWeight-min(brainWeight))/(max(brainWeight)-min(brainWeight));

# Set the parmaters to random values
theta1 = 0;  # Y-INTERCEPT
theta2 = 5;  # SLOPE

# Number of training samples
n = size(x, 1);

# Set the number of iterations
iterations = 100000;
J = zeros(iterations, 2);

# Set the learning rate
alpha = 0.00001;

dx_tolerance = 0.1;
j = 1;
i = 1;

while  j >= dx_tolerance 
  # Calculate the predictions
  predictions = theta1 + x * theta2;
  
  # Calculate the value of cost function J
  err = y-predictions;
  errSquared = err.^2;
  sumErrSquared = sum(errSquared);
  sumErr = sum(err);
  j = (1/n)*sumErrSquared;
  J(i, 1) = i;
  J(i, 2) = j;  
  
  # Simultaneous update of the parameters 
  partialDx_theta1 = 2*(predictions-y);
  partialDx_theta2 = 2*(predictions-y)*theta2;
  temp_theta1 = theta1 - alpha*(2/n)*sum(partialDx_theta1); 
  temp_theta2 = theta2 - alpha*(2/n)*sum(partialDx_theta2); 
  theta1 = temp_theta1; 
  theta2 = temp_theta2;
  i = i+1; 
end;
i
j
theta1
theta2

subplot(2,1,1)
plot(J(:, 1), J(:, 2))
subplot(2,1,2)
plot(x, (theta1+x*theta2), 'color', 'g')
hold on
plot(x, y)



