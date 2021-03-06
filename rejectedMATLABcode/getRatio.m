function ratio = getRatio(an, cath) 
%% returns a anode/cathode ratio based on two instances of samples
% error checking 
    if (an.electrodeType ~= 0 & cath.electrodeType ~= 1)
        error("First parameter must be anode, second parameter must be cathode");
    end
    if (an.electrodeType ~=0 | cath.electrodeType ~= 1) 
        if (an.electrodeType ~= 0) 
            error("First parameter must be anode");
        elseif (cath.electrodeType ~= 1) 
            error("Second parameter must be cathode");    
        end
    end
    
% math
cathCap = cath.mass * 0.88 * 148 / 1000; % 148 mAh/g, 88% is from fraction of active material/active particles in solid mixture
anCap = an.mass * 0.902 * 372 / 1000; %372 mAh/g
ratio = cathCap / anCap
end