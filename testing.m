clc; clear; close all;

% Define the range for x and y
x = -10:1:10;
y = -10:1:10;

% Create a grid of x and y values
[X, Y] = meshgrid(x, y);

% Define the plane equation z = ax + by + c
a = 1; % Coefficient for x
b = 0; % Coefficient for y
c = -9; % Constant term

% Calculate the corresponding z values
Z = a * X + b * Y + c;

% Plot the plane
surf(X, Y, Z);

% Add labels and title
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('3D Plane Plot');

% Adjust the view
view(3);
grid on;

[x,z] = meshgrid(-5:0.5:5, -5:0.5:5);
y = -4*x -5/2;
surf(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('-8x')
grid on; axis equal;