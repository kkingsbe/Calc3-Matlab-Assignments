clearvars
close all

%% Problem 1
% a: Determine unit vector in direction <1, -3, 5>
vec = [1; -3; 5];
mag = norm(vec);
uv = vec ./ mag;
disp("1 a:")
disp(uv)

% b: Find normal vector to plane through 3 points
p0 = [1; 0; 2];
p1 = [2; 1; 2];
p2 = [1; 3; 0];

N = cross(p1-p0, p2-p0);
disp("1 b:")
disp(N)

% c: Find distance from P to line l
p = [1; 2; 3];
p1 = [1; 4; 7];
p2 = [-1; 3; 6];


l1 = p2 - p1;
l2 = p - p1;
dist = norm(cross(l1, l2)) / norm(l2);

disp("1 c:")
disp(dist)

% d: Find an equation for the plane which contains the line
%x = (4 * t) + 2;
%y = (5 * t) + 3;
%z = (3 * t) - 2;
p = [0; -2; -1];
q = [2; 3; -2]; %t = 0
l = [4; 5; 3];
N = cross(l, p-q) / norm(cross(l, p-q));
disp("1 d:")
disp(N(1) + "(x - " + p(1) + ") + " + N(2) + "(y + " + (-1 * p(2)) + ") + " + N(3) + "(z + " + (-1 * p(3)) + ") = 0")

% e: Find the area of the triangle
p0 = [3; 1; 0];
p1 = [1; 2; 3];
p2 = [0; -1; -2];

base = norm(p1 - p0);
height = norm(p2 - p0);
area = 0.5 * base * height;
disp("1 e:")
disp(area)

%% Problem 2:
syms a1 a2 a3 b1 b2 b3 c1 c2 c3 real
a = [a1; a2; a3];
b = [b1; b2; b3];
c = [c1; c2; c3];

term_1 = cross(a, cross(b, c));
term_2 = cross(b, cross(c, a));
term_3 = cross(c, cross(a, b));
result = simplify(term_1 + term_2 + term_3);

disp("2:")
disp(result)

%% Problem 3:
% a: Plot the curve
x = '2 + cos((3 * t) / 2) * cos(t)';
y = '2 + cos((3 * t) / 2) * sin(t)';
z = 'sin((3 * t) / 2)';
ezplot3(x, y, z, [0, 4 * pi]);
hold on

% b: Find the vector equation of the line passing through the lines
P = [2; 0; 3];
Q = [3; -2; 1];
line_dir = (Q - P) / norm(Q - P);
x = sprintf('%f + (%f * t)', P(1), line_dir(1));
y = sprintf('%f + (%f * t)', P(2), line_dir(2));
z = sprintf('%f + (%f * t)', P(3), line_dir(3));

ezplot3(x, y, z, [-1, 1]);
hold off






