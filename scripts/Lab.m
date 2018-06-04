
cd 'C:\Users\dhamacher\Google Drive\Personal\Octave'
load('brainhead.dat')

x = brainhead(:, [3])
y = brainhead(:, [4])
plot(x, y)
title("Head Size vs. Brain Weight")
xlabel("Head Size (cm^3)")
ylabel("Brain Weight (g)")
# print -djpg brainheadplot.jpg