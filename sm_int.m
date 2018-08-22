function yy = sm_int(xx)

% interpolate and extrapolate ir [K] to cpc [mm]
% mm  IR diff in K
% ----------------
% 100	10
% 200	8
% 300	6
% 400	4
% 500	2
% 600	0

% x = [10 8 6 4 2 0];
% y = [100 200 300 400 500 600];
% xq = [20 30 40 50 60 70 80 100];
% xqq = [-10 -20 -30 -40 -50 -60 -70 -80 -90 -100];
% 
% yq = spline(x, y, xq);
% yqq = spline(x, y, xqq);

%plot([xqq x xq], [yqq y yq])

x1 = 10;
x2 = 0;
y1 = 100;
y2 = 600;
%xx = [-100 -90 -80 -70 -60 -50 -40 -30 -20 -10 20 30 40 50 60 70 80];

%1/5 of the linear fn from Kyle, slide 6
yy = 0.2*(y1 - (xx - x1).*(y2 - y1)/(x2 - x1));

% y = 0.2*(100 + 50*(x - 10))

%plot(xx, yy)