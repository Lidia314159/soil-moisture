% misc plots

% mesh plot

% ii = 1;
% 
% figure; mesh(c(:,:,ii)); view(0,90); colorbar; title('CPC: 3 31 2018')
% figure; mesh(ir(:,:,ii)); view(0,90); colorbar; title('dIR: 3 31 2018')
% figure; mesh(mix(:,:,ii)); view(0,90); colorbar; title('Mix: 3 31 2018')

% range plot
% figure
% for ii = 1:size(c,3)
%     cc = c(:,:,ii);
%     ccc = cc(cc~=-999);
%     plot(sort(ccc(:)/1000));
%     hold on; grid on;
% end
% title('CPC/1000 range over 3/31-4/9/2018 w/o -999')
% 
% figure
% for ii = 1:size(c,3)
%     cc = sw_int(ir(:,:,ii));
%     plot(sort(cc(:)));
%     hold on; grid on;
% end
% title('dIR scaled range over 3/31-4/9/2018')
% 
% figure
% for ii = 1:size(c,3)
%     cc = mix(:,:,ii);
%     plot(sort(cc(:)));
%     hold on; grid on;
% end
% title('Mix range over 3/31-4/9/2018 w -999');

ii=10;
da = c(:,:,1)/1000;
figure; mesh(da); view(0,90); colorbar; title('CPC 4/9/2018')
da = sm_int(ir(:,:,1))/1000;
figure; mesh(da); view(0,90); colorbar; title('dIR 4/9/2018')
figure; mesh(mix(:,:,1)); view(0,90); colorbar; title('Mix 4/9/2018')

da = c(:,:,ii)/1000;
figure; histogram(da,'Normalization','probability'); title('CPC histogram: 4/9/2018')
da = sm_int(ir(:,:,ii))/1000;
figure; histogram(da,'Normalization','probability'); title('dIR histogram: 4/9/2018')
figure; histogram(mix(:,:,ii),'Normalization','probability'); title('Mix histogram: 4/9/2018')

%histogram(data,'Normalization','probability')