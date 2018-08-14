% variable: tmp1

i=4;

tmpxx = csvread(['/Users/Lidija/Documents/MATLAB/SoilMoisture/cpc/' l1(i).name]);

nccreate('cpc_netcdf3.nc','SMOISNEW','Dimensions',{'y',1059,'x',1799},'Format','classic')
ncwrite('cpc_netcdf3.nc','SMOISNEW',tmpxx/1000)
ncdisp('cpc_netcdf3.nc')

nccreate('cpc_netcdf4.nc','SMOISNEW','Dimensions',{'y',1059,'x',1799},'Format','netcdf4_classic')
ncwrite('cpc_netcdf4.nc','SMOISNEW',tmpxx/1000)
ncdisp('cpc_netcdf4.nc')