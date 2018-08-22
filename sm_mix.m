% sw_mix

%rselect

mix = zeros(1049, 1799,10);

for i=1:size(c,3)

    % write csv file
    %csvwrite('file1.dat', m)
    %type file1.dat

    % if want higher precision, use
    % dlmwrite(filename,M)

    % check for size +> error
    %fix_cpc  <---
    cc = c(:,:,i)/1000;
    iirr = sw_int(ir(:,:,i))/1000;
    mmix = 0.5*(cc + iirr);
    mix(:,:,i) = mmix;
    
%     figure
%     mesh(cc)
%     figure
%     mesh(iirr)

    %figure; histogram(iirr,200)
    %figure; mesh(mix); view(0,90); colorbar
    %figure; histogram(mix,200)
    
end

%histogram(data,'Normalization','probability')