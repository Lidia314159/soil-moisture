% 
% region select
%
% no data in CPC is -999
% no data in IR is -1e+30
% no data pixels are everywhere

close all
clear all

l1 = dir('/Users/Lidija/Documents/MATLAB/SoilMoisture/cpc/*.csv');
l2 = dir('/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/*.csv');

lx = 951;
rx = 1500;
ly = 201;
hy = 700;

c = zeros(hy-ly+1, rx-lx+1, length(l1));  
% 10% of cpc in this region is = -999
ir = c; 
vis = c;

for i=1:length(l1)
    %i
    l1(i).name
    tmp1 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/cpc/' l1(i).name]);
    tmp2 = tmp1(ly:hy, lx:rx);
    c(:,:,i) = tmp2; 
end

%%
for i=1:4:length(l2)-3
    %i
    index = ceil((i+3)/4);
    %
    l2(i).name
    tmp1 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/' l2(i).name]);
    l2(i+1).name
    tmp2 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/' l2(i+1).name]);
    ir(:,:,index) = tmp2(ly:hy, lx:rx) - tmp1(ly:hy, lx:rx);
    %
    l2(i+2).name
    tmp1 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/' l2(i+2).name]);
    l2(i+3).name
    tmp2 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/' l2(i+3).name]);
    vis(:,:,index) = tmp2(ly:hy, lx:rx) - tmp1(ly:hy, lx:rx);
    
    %ir = ir20(ly:hy, lx:rx) - ir16(ly:hy, lx:rx);
    %vis = vis20(ly:hy, lx:rx) - vis16(ly:hy, lx:rx);
    
    %
end

%figure; mesh(air20_sel-air16_sel); view(0,90); colorbar
%figure; mesh(avis20_sel-avis20_sel); view(0,90); colorbar

%%
for i=1:10
    figure
    mesh(c(:,:,i)); view(0,90); colorbar
    figure
    mesh(ir(:,:,i)); view(0,90); colorbar
    figure
    mesh(vis(:,:,i)); view(0,90); colorbar
end

%%
figure
for i=1:10
    % vv = tmpp(:); %matrix to vector
    % ww = find(vv>-999); %exclude -999
    % plot(sort(vv(ww))); %take a look
    tmpp = c(:,:,i);
    plot(sort(tmpp(:)));
    hold on; grid on
    title('Range of CPC values for 10 days (3/31-4/9)')
end
% figure
% for i=1:10
%     tmpp = ir(:,:,i);
%     plot(sort(tmpp(:)));
%     hold on; grid on
%     title('Range of difference (20z-16z) IR values for 10 days (3/31-4/9)')
% end    
% figure
% for i=1:10
%     tmpp = vis(:,:,i);
%     plot(sort(tmpp(:)));
%     hold on; grid on
%     title('Range of difference (20z-16z) VIS values for 10 days (3/31-4/9)')
% end
