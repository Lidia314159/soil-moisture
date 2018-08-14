%

%ll1 = dir('/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/*.csv');
%ll2 = dir('/Users/Lidija/Documents/MATLAB/SoilMoisture/cpc/*.csv');

cc = csvread('/Users/Lidija/Documents/MATLAB/SoilMoisture/cpc/20180401_cpc.csv');

aair16z  = csvread('/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/20180401_ir_16z_abi.csv');
aair20z  = csvread('/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/20180401_ir_20z_abi.csv');
aavis16z = csvread('/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/20180401_vis_16z_abi.csv');
aavis20z = csvread('/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/20180401_vis_20z_abi.csv');

%domainx = 900 .. 1300 = 400
%domainy = 400 .. 800 = 400

%%
figure
mesh(aair20z-aair16z)
view(0,90)
colorbar

figure
mesh(aavis20z-aavis16z)
view(0,90)
colorbar

figure
mesh(cc)
view(0,90)
colorbar


% scc = [];
% for i=1:size(cc,1)*size(cc,2)
%     if cc(i) ~= -999
%         scc = [scc cc(i)];
%     end
% end
% 
% %%
% disp('min cc other than -999')
% min(scc)
% disp('max cc')
% max(max(cc))
% 
% %%
% disp('min ir16')
% min(min(aair16z))
% disp('max ir16')
% max(max(aair16z))
% 
% %%
% disp('min ir20')
% min(min(aair20z))
% disp('max ir20')
% max(max(aair20z))
% 
% %%
% disp('min vis16')
% min(min(aavis16z))
% disp('max vis16')
% max(max(aavis16z))
% 
% %%
% disp('min vis20')
% min(min(aavis20z))
% disp('max vis20')
% max(max(aavis20z))
% 
% %%
% disp('min ir20-ir16')
% min(min(aair20z-aair16z))
% disp('max ir20-ir16')
% max(max(aair20z-aair16z))
% 
% %%
% disp('min vis20-vis16')
% min(min(aavis20z-aavis16z))
% disp('max vis20-vis16')
% max(max(aavis20z-aavis16z))