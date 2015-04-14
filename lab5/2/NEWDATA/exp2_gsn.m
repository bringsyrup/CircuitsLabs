IS = 1.9633e-06;
UT = .025;
f = 15;

%gs = (sqrt(IS.*I_channel)./UT).*(1 - exp(-sqrt(I_channel./IS)));
gs = zeros(length(I_channel), 1);
for i=1:length(I_channel)-1
    gs(i) = -1*((I_channel(i+1) - I_channel(i)) / (V_S(i+1) - V_S(i)))
end
wgs = I_channel./UT;
sgs = sqrt(IS.*I_channel)./UT;
loglog(gs, I_channel, 'mo')
hold on
loglog(wgs, I_channel, 'k', 'linewidth', 2)
loglog(sgs, I_channel, 'linewidth', 2)
ylabel('g_s (A/V)', 'fontsize', f)
xlabel('I_{channel} (A)', 'fontsize', f)
axis([0, 1, 0, .01])
legend('Data', 'Weak inversion fit', 'Strong inversion fit')
title('nMOS Incremental Source Conductance', 'fontsize', round(1.3*f))