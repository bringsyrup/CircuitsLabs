clc; clf;
%Experiment 1 --------------------------------------
%NMOS:
% epsilon = 2*10^(-4);
% [Is, VT, kappa] = ekvfit2(V_NMOS14(), I_NMOS14(), epsilon, ['on'])
% NMOS11:
% Is =
%    1.8808e-06
% VT =
%     0.5786
% kappa =
%     0.7149
% NMOS12
% Is =
%    1.9038e-06
% VT =
%     0.5767
% kappa =
%     0.7104
% NMOS13:
% Is =
%    1.9164e-06
% VT =
%     0.5798
% kappa =
%     0.7085
% NMOS14:
% Is =
%    1.9168e-06
% VT =
%     0.5795
% kappa =
%     0.7087
% 
% [Is1, VT1, kappa1] = ekvfit2(V_NMOS11, I_NMOS11, epsilon, ['off'])
% hold on
% [Is2, VT2, kappa2] = ekvfit2(V_NMOS12, I_NMOS12, epsilon, ['off'])
% [Is3, VT3, kappa3] = ekvfit2(V_NMOS13, I_NMOS13, epsilon, ['off'])
% [Is4, VT4, kappa4] = ekvfit2(V_NMOS14, I_NMOS14, epsilon, ['off'])
mean = (I_NMOS11 + I_NMOS12 + I_NMOS13 + I_NMOS14) ./4;
diff1 = I_NMOS11 ./ mean .* 100;
diff2 = I_NMOS12 ./ mean .* 100;
diff3 = I_NMOS13 ./ mean .* 100;
diff4 = I_NMOS14 ./ mean .* 100;
semilogx(mean, diff1, 'r-');
hold on;
semilogx(mean, diff2, 'g-');
semilogx(mean, diff3, 'b-');
semilogx(mean, diff4, 'm-');
legend('NMOS 1','NMOS 2','NMOS 3','NMOS 4')
title('Percentage Difference Between Individual Channel Current and Mean Channel Current', 'FontSize', 14)
xlabel('Mean Current (A)', 'FontSize', 14)
ylabel('% Difference', 'FontSize', 14)
