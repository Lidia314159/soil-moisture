%
%which file
i=4;
j=13;

l1 = dir('/Users/Lidija/Documents/MATLAB/SoilMoisture/cpc/*.csv');
l2 = dir('/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/*.csv');

%select section
lx = 951;
rx = 1500;
ly = 201;
hy = 700;

% i
l1(i).name
tmp1 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/cpc/' l1(i).name]);
c = tmp1(ly:hy, lx:rx);

figure
mesh(c); view(0,90); colorbar

% j
l2(j).name
ir16 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/' l2(j).name]);
l2(j+1).name
ir20 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/' l2(j+1).name]);
l2(j+2).name
vis16 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/' l2(j+2).name]);
l2(j+3).name
vis20 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/' l2(j+3).name]);

ir = ir20(ly:hy, lx:rx) - ir16(ly:hy, lx:rx);
vis = vis20(ly:hy, lx:rx) - vis16(ly:hy, lx:rx);

figure
mesh(ir); view(0,90); colorbar
figure
mesh(vis); view(0,90); colorbar
