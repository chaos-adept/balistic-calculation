% angle
a_deg = input ("enter angle in degress: ")
v_start = input ("enter start speed in meters/sec: ")

a_rad = a_deg * pi / 180;



x1 = 0; % start position
g = 10; % gravitation

x2 = v_start^2/g * sin(2 * a_rad)
T = 2* v_start * sin(a_rad)/g
H = v_start ^ 2 * sin(a_rad)^2/2*g

x = x1:0.1:x2;
y = x .* tan(a_rad) - (x.^2 * g)/(2 * v_start^2 * cos(a_rad)^2);


%draw trajectory %

h=figure()

hold on;

plot(x, y, "-.m;t;");

% draw guidenes %

ax = 0:0.1:x2/2;
plot(ax, ax*tan(a_rad), "-.k;angle;");

rx = 0:0.1:x2;
plot(rx, sqrt(x2^2 - rx .^ 2), "-.g;angle guide;");

set(gca, 'dataaspectratio', [1, 1, 1]);
set(gca, 'dataaspectratiomode', 'manual');

pause