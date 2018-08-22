% read in single day

c = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/cpc/20170716_cpc.csv']);
ir20 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/20170716_ir_20z_abi.csv']);
ir16 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/abi/20170716_ir_16z_abi.csv']);

c = c/1000;
ir = sw_int(ir20 - ir16)/1000;
mix = 0.5*(c + ir);

% figure; mesh(c); view(0,90); colorbar 
% figure; mesh(mix); view(0,90); colorbar

c = 0.5*(c+1);
mix = 0.5*(mix+1);

% figure; mesh(c); view(0,90); colorbar 
% figure; mesh(mix); view(0,90); colorbar

%%
csvwrite(['/Users/Lidija/Documents/MATLAB/SoilMoisture/20170716_cpc_fix1.csv'], c);
csvwrite(['/Users/Lidija/Documents/MATLAB/SoilMoisture/20170716_mix_fix1.csv'], mix);

