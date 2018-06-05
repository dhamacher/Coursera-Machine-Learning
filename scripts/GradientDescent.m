# Set the workspace
#cd '..\Octave-ML'

brainhead = load('.\input\brainhead.dat');
x = brainhead(:, [3]);
y = brainhead(:, [4]);

x0 = ones(size(x), 1);

# Feature Scaling
X = horzcat([x0, (x-min(x))/(max(x)-min(x))]);
Y = (y-min(y))/(max(y)-min(y));


# Set the parmaters to random values
b = -500;
m = 0.5;

# Set the learning rate
alpha = 0.1;

theta = [b; m];
iteration = 1;
results = zeroes(size(x), 2);
J = 0;

while iteration != 100,
  temp_b = b - alpha * J;
  temp_m = m - alpha * J;
  b = temp_b;
  m = temp_m;
  iteration = iteration + 1;
  results(iteration, 1) = iteration;
  results(iteration, 2) = J;
  theta = [b; m];
  J = costFunction(X, Y, theta);    
end;
 
 plot(results(:, 1), results(:, 2))
 
 