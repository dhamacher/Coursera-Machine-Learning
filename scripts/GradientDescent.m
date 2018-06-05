# Set the workspace
#cd '..\Octave-ML'

brainhead = load('.\input\brainhead.dat');
x = brainhead(:, [3]);
y = brainhead(:, [4]);

x0 = ones(size(x), 1);

# Feature Scaling
# X = horzcat([x0, (x-min(x))/(max(x)-min(x))]);
X = (x-min(x))/(max(x)-min(x));
Y = (y-min(y))/(max(y)-min(y));


# Set the parmaters to random values
b = 0;
m = 0.5;

# Set the learning rate
alpha = 0.01;

delta_bound = 0.0001;
delta = 1;

theta = m;
iteration = 1;
J = 1;

while J >= delta_bound || iteration == 10,  
  n = size(X,1);
  predictions = X*theta;
  temp_b = b - alpha * ((2/n)*sum((Y-predictions)));
  temp_m = m - alpha * ((2/n)*sum((Y-predictions))*theta);
  b = temp_b;
  m = temp_m;
  theta = temp_m;
  iteration = iteration + 1;  
  J = costFunction(X, Y, theta);  
end;
m
b
yp = X*m+b;
plot(X,Y);
hold on;
plot(X, YP, 'color', 'r');
 
 
 
 
 