%% read in a single day

c0 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/one_day/20170716_cpc.csv']);
ir20 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/one_day/20170716_ir_20z_abi.csv']);
ir16 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/one_day/20170716_ir_16z_abi.csv']);
initsm0 = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/one_day/smois.csv']);

%% get all in range [-1,1]

%rescale(data, low, high)

c = rescale(c0, -1, 1);  
ir = sm_int(ir20 - ir16);
ir = rescale(ir, -1, 1);
initsm = rescale(initsm0, -1, 1);
%% mix them

% figure; mesh(c); view(0,90); colorbar 
% figure; mesh(ir); view(0,90); colorbar
% figure; mesh(initsm); view(0,90); colorbar

mix = ones(size(c,1), size(c,2)); %all water

for ii=1:size(c,1)
   for jj=1:size(c,2)
      if (c(ii,jj)~=-1 && initsm(ii,jj)~=1) %not water
         mix(ii,jj) = (c(ii,jj) + ir(ii,jj) + initsm(ii,jj))/3;
      end
      if (c(ii,jj)==-1 && initsm(ii,jj)~=1) %mexico and canada
         mix(ii,jj) = (ir(ii,jj) + initsm(ii,jj))/2;
      end
   end
end

%%
figure; mesh(c); view(0,90); colorbar 
figure; mesh(ir); view(0,90); colorbar
figure; mesh(initsm); view(0,90); colorbar
figure; mesh(mix); view(0,90); colorbar

%% write out csv files with the same name
%c2 = rescale(c, 0, 1);
%mix2 = rescale(mix, 0, 1);
csvwrite(['/Users/Lidija/Documents/MATLAB/SoilMoisture/20170716_cpc_fix2.csv'], rescale(c, 0, 1));
csvwrite(['/Users/Lidija/Documents/MATLAB/SoilMoisture/20170716_mix_fix2.csv'], rescale(mix, 0, 1));

