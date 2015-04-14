IS = 1.9483e-6; %5.948e-6
UT = .025;
f = 15;

%gs = (sqrt(IS.*pI_channel)./UT).*(1 - exp(-sqrt(pI_channel./IS)));
gs = zeros(length(pI_channel), 1);
for i=1:length(pI_channel)-1
    gs(i) = (pI_channel(i+1) - pI_channel(i)) / (pV_S(i+1) - pV_S(i))
end
wgs = pI_channel./UT;
sgs = sqrt(IS.*pI_channel)./UT;
loglog(gs, pI_channel, 'mo')
hold on
loglog(wgs, pI_channel, 'k', 'linewidth', 2)
loglog(sgs, pI_channel, 'linewidth', 2)
ylabel('g_s (A/V)', 'fontsize', f)
xlabel('I_{channel} (A)', 'fontsize', f)
axis([5e-8, 5e-3, 0, 5e-5])
legend('Data', 'Weak inversion fit', 'Strong inversion fit')
title('pMOS Incremental Source Conductance', 'fontsize', round(1.3*f))