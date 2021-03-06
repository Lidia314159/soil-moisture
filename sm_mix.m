% sm_mix

%rselect

mix = zeros(size(c,1), size(c,2) , size(c,3));

for i=1:size(c,3)

    % write csv file
    %csvwrite('file1.dat', m)
    %type file1.dat

    % if want higher precision, use
    % dlmwrite(filename,M)

    % check for size +> error
    %fix_cpc  <---
    cc = c(:,:,i)/1000;
    iirr = sm_int(ir(:,:,i))/1000;
    mmix = 0.5*(cc + iirr);
    mix(:,:,i) = mmix;
    
    %figure; mesh(cc); view(0,90); colorbar
    figure; histogram(cc, 'Normalization','probability'); grid on; title('Normalized Histogram of CPC')
    
    %figure; mesh(iirr); view(0,90); colorbar
    figure; histogram(iirr, 'Normalization','probability'); grid on; title('Normalized Histogram of IR')
    
    %figure; mesh(mmix); view(0,90); colorbar
    figure; histogram(mmix, 'Normalization','probability'); grid on; title('Normalized Histogram of Mix')
    
end

% figure; histogram(data,'Normalization','probability'); title('Data, date: yyyymmdd')
% figure; histogram(data,200)

%histogram(data,'Normalization','probability')