meanI = (I_1 + I_2 + I_3 + I_4)/4;
diffI1 = 100*(I_1 - meanI)/meanI;
diffI2 = 100*(I_2 - meanI)/meanI;
diffI3 = 100*(I_3 - meanI)/meanI;
diffI4 = 100*(I_4 - meanI)/meanI;

semilogx(meanI, diffI1, 'bo')
hold on
semilogx(meanI, diffI2, 'ro')
semilogx(meanI, diffI3, 'mo')
semilogx(meanI, diffI4, 'go')
xlabel('Mean Current (A)', 'fontsize', 15)
ylabel('Percent Difference', 'fontsize', 15)
title('Matching analysis of the ALD1106', 'fontsize', 20)