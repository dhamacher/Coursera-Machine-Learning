
#cd 'C:\Users\dhamacher\Google Drive\Personal\Octave'
brainhead = load('.\input\brainhead.dat');
x = brainhead(:, [3]);
y = brainhead(:, [4]);


# Feature Scaling
X = (x-min(x))/(max(x)-min(x));
Y = (y-min(y))/(max(y)-min(y));

# Plot the resuls side by side
#{
subplot(2, 1, 1)
plot(x, y)
title("Head Size vs. Brain Weight")
xlabel("Head Size (cm^3)")
ylabel("Brain Weight (g)")
subplot(2, 1, 2)
plot(X, Y)
title("Head Size vs. Brain Weight")
xlabel("Head Size (cm^3)")
ylabel("Brain Weight (g)")
print -djpg '.\\output\\brainheadnormalizeplot.jpg'
#}

# First hypothesis test with y = 0.5x -500
param_b = -500;
param_m = 0.5;

param_b2 = -150;
param_m2 = 0.33;

yp = x*param_m + param_b;
yp2 = x*param_m2 + param_b2;

plot(x, y)
hold on
plot(x, yp, 'color', 'r')
hold on
plot(x, yp2, 'color', 'g')
title("Head Size vs. Brain Weight")
xlabel("Head Size (cm^3)")
ylabel("Brain Weight (g)")
print -djpg '.\\output\\brainheadhypothesis02.jpg'



