#{ 
********************************************************************************
Filename:       PropertyAssessmentAnalysis.m
Description:    Analyze property assessment data and use it to explain the 
                purpose of feature scaling. The data is filtered based on year 
                built (>= 2017) and the assessed value 
                (ranging from 300k to 500k) 
                
Metadata:       Assessed Value | Garage | Lot Size | Year Built
********************************************************************************
#}
data = load('.\\input\\propertyAssessment.dat');
x = data(:, 3);
y = data(:, 1);
[X, Y] = meshgrid(x, y);
Z = 50+0.06*X;
contour(X,Y,Z)