% IR metric into mm metric

%rselect
%returns c(:,:,i), ir(:,:,i), vis(:,:,i), i=1 to 10

%%
i = 4;

for j = 1:size(ir,2)
    for k = 1:size(ir,1)
        tt = ir(j,k,i); %temp variable 
        if (tt >= -100) && (tt < -60) 
            yy = 0.5*(sw_int(-100) - sw_int(-60)); 
        elseif (tt >= -60) && (tt < -30)
            yy = 0.5*(sw_int(-60) - sw_int(-30));
        elseif (tt >= -30) && (tt < -20)
            yy = 0.5*(sw_int(-30) - sw_int(-20));
        elseif (tt >= -20) && (tt < -10)
            yy = 0.5*(sw_int(-20) - sw_int(-10));
        elseif (tt >= -10) && (tt < 0)
            yy = 0.5*(sw_int(-10) - sw_int(0));
        elseif (tt >= 0) && (tt < 10)
            yy = 0.5*(sw_int(0) - sw_int(10));
        elseif (tt >= 10) && (tt < 20)
            yy = 0.5*(sw_int(10) - sw_int(20));
        elseif (tt >= 20) && (tt < 30)
            yy = 0.5*(sw_int(20) - sw_int(30));
        elseif (tt >= 30) && (tt < 50)
            yy = 0.5*(sw_int(30) - sw_int(50));
        elseif (tt >= 50) && (tt < 80)
            yy = 0.5*(sw_int(50) - sw_int(80));
        else
            yy = -999;
        end
        ir(j,k,i) = yy;
    end
end
        
mesh(ir(:,:,i))
            