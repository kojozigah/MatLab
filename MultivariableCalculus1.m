% Plotting normal functions
%fplot(@(x) sin(x));
%fplot(@(x) cosh(x));
%fplot(@(x) exp(-x^2));
clear

x = linspace(1,7);
%y = exp(x^-2);
%plot(x,y);

%vectors 
 a = [1,2,3]; % this is a vector
 clear
 clc

%Parametric equations
% graphing the unit circle: x(t) = cos(t) , y(t) = sin(t) , 0 <= t<= 2pi

%T = 0:0.1:2*pi; plot(cos(T), sin(T)); axis square %plot 1
%syms t; figure; fplot(cos(t), sin(t), [0,2*pi]); axis square %plot 2 I prefer this syntax

%graphing the spiral plane curve: x = e^(-t/10)(1 + cos(t)), y = e^(-t/10)(1 + sin(t))

%syms t; figure; fplot(exp(-t/10)*(1+cos(t)), exp(-t/10)*(1+sin(t)) , [0,2*pi])

%syms t; figure; fplot(exp(-t/10)*(1+cos(t)), exp(-t/10)*(1+sin(t)) , [0,20*pi])
% learn the axis command

%drawing a sphere
% 
% [X,Y,Z] = sphere;
% figure; surf(X,Y,Z);
% xlabel('X-Axis'); ylabel('Y-Axis'); zlabel('Z-Axis');
% axis equal;

%drawing a sphere with coordinates
% sphere of the equation x^2 + y^2 + z^2 = 4

% radius = 2;
% [x,y,z] = sphere(50);
% x= radius*x;y= radius*y;z= radius*z;
% figure;
% surf(x,y,z);
% axis equal; xlabel('x-axis');ylabel('y-axis');zlabel('z-axis');
% title('Sphere of radius 2');

%drawing a cylinder

% [x,y,z] = cylinder;
% figure; surf(x,y,z);
% xlabel('X-Axis'); ylabel('Y-Axis'); zlabel('Z-Axis');
% axis equal;

%drawing a cylinder of the equation
%(x-1)^2 + y^2 = 1

% radius = 1;
% height = 5; % adjustable
% theta = linspace(0,2*pi,50);
% z= linspace(-height/2,height/2,50);
% [Theta,Z] = meshgrid(theta,z);
% X = radius * cos(Theta) + 1; %scale x by radius;
% Y = radius * sin(Theta);
% figure; surf(X,Y,Z); axis equal; xlabel('x-axis'); ylabel('y-axis');
% zlabel('z-axis'); title('Graph of a cylinder');


%circle and cylinder on same graph

% Plot the sphere
% radius = 2;
% [x, y, z] = sphere(50);
% x = radius * x;
% y = radius * y;
% z = radius * z;
% figure;
% surf(x, y, z);
% axis equal;
% xlabel('x-axis');
% ylabel('y-axis');
% zlabel('z-axis');
% title('Sphere and Cylinder');
% hold on;
% 
% % Plot the cylinder
% radius = 1;
% height = 5; % adjustable
% theta = linspace(0, 2*pi, 50);
% z = linspace(-height/2, height/2, 50);
% [Theta, Z] = meshgrid(theta, z);
% X = radius * cos(Theta) + 1; % Shift the cylinder along the x-axis by 1
% Y = radius * sin(Theta);
% surf(X, Y, Z);
% 
% % Ensure the axes are equal and add labels
% axis equal;
% xlabel('x-axis');
% ylabel('y-axis');
% zlabel('z-axis');
% title('Sphere and Cylinder');


%creating a Vivani's curve. Imposes the circle on the cylinder

syms t; x=1+cos(t);y=sin(t);z=2*sin(t/2);
fplot3(x,y,z,[0, pi]); title('Vivani-s Curve 3d');

%showing the superimposing of sphere and cylinder on Vivani's curve
hold on
fplot3(sym(0), 2*cos(t/2), 2*sin(t/2), [0,pi])
fplot3(2*cos(t/2), sym(0), 2*sin(t/2), [0,pi])
fplot3(2*cos(t/2), 2*sin(t/2), sym(0), [0,pi])
fplot3(1+cos(t), sin(t), sym(0), [0,pi])
fplot3(sym(0), sym(0), t, [0,2]);
fplot3(sym(0), t, sym(0) , [0,2]);
fplot3(t, sym(0), sym(0), [0,2]);
title(''); xlabel(''); ylabel(''); zlabel('');
grid off; axis off;
view([10,3,1])

clf; %clears figure
hold off; %reset hold

%---GRAPHING SURFACES----

%Graphing the function f(x,y) = 1 - (x^2 + y^2)

syms x y; figure; fmesh(1-x^2 - y^2, [-1,1, -1,1])
title('1 - x^2 - y^2 ')

hold on; fsurf(sin(6*x*y), [-1,1,-1,1])
title('Interwoven Surfaces')
%fsurf - creates an opaque sketch ; fmesh- creates a transparent sketch

clf; hold off;
fsurf(sqrt(1-x^2 -y^2)* heaviside(1-x^2 - y^2), [-1,1 ,-1,1])
title('Hemisphere with smooth edges'); axis equal;

clf; %delete to show

%2.4 Parametric surfaces

syms u v, fmesh(u^3 , v^3, v*u , [-1,1  ,-1,1])
view([1,1,1]); 

