Vout_filtered = zeros(length(Vout_2V), 1);
for i = 1:length(Vout_2V)-1
    if (Vout_2V(i+1) - Vout_2V(i)) > 0.2
        Vout_filtered(i) = Vout_2V(i+1);
    else
        Vout_filtered(i) = Vout_2V(i);
    end
end
