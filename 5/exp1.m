clc; clf;
%Experiment 1 --------------------------------------
%NMOS:
% hold all;
% epsilon = 2*10^(-4);
% [Is, VT, kappa] = ekvfit(V_NMOS(15:end), I_NMOS(15:end), epsilon, ['on'])
%   -- FINAL
% Is =
%    2.0353e-06
% VT =
%     0.5544
% kappa =
%     0.7118

%PMOS:
% epsilon = 2.5*10^(-4); % N > 4;
% epsilon = 2.75*10^(-3); % N > 6;
% epsilon = 2.45*10^(-4); % N > 4; Is = 5.8599e-06 VT = 4.2002; kappa = -0.4305
% epsilon = 4.5*10^(-4); % N > 4; Is = 5.9483e-06; VT = 4.1984; kappa =
% %    -0.4382 -- FINAL for old data.
% [Is, VT, kappa] = ekvfit(V_PMOS(15:end), I_PMOS(15:end), epsilon, ['on'])
% epsilon = 1*10^(-3); % N > 3
% [Is, VT, kappa] = ekvfit(V_PMOS(15:end), I_PMOS(15:end), epsilon, ['on'])
% Is =
%    7.0903e-07
% VT =
%     0.6912
% kappa =
%     0.7691

%Transconductance gain: ----------------------------
clf;

%NMOS
% Is = 1.9633*10^(-6);
% Ut = .025; %Thermal voltage is 25 mV
% k = 0.7058;
% Wstart = 1;
% Wend = 37;
% Sstart = 37.5;
% Send = 200;
% %Transconductance from Data
% loglog(I_NMOS(2:end), diff(I_NMOS) ./ diff(V_NMOS), 'bo');
% hold on;
% %Theoretical Weak Inversion
% loglog(I_NMOS(Wstart:Wend), (I_NMOS(Wstart:Wend)./Ut).*k, 'r-');
% %Theoretical Strong Inversion
% loglog(I_NMOS(Sstart:Send), sqrt(Is*I_NMOS(Sstart:Send)./Ut).*k, 'g-');
% 
% legend('Transconductance Gain','Weak Inversion $G_m = \frac{\kappa}{U_{T}} * I_{sat} = \frac{0.7058}{0.025 (V)} * I_{sat}$', 'Strong Inversion $G_m = \kappa\frac{I_s * I_{sat}}{U_{T}} = 0.7058 * \frac{1.9633*10^{-6} (A) * I_{sat}}{0.025 (V)}$','FontSize',14)
% title('Transconductance Gain of an NMOS Transistor','FontSize',14)
% xlabel('Current (A)')
% ylabel('Transconductance Gain (Mhos)')

% % %PMOS
Is = 7.0903*10^(-7);
Ut = .025; %Thermal voltage is 25 mV
k = 4.2309; % 5 - 0.7691
Wstart = 257;
Wend = 300;
Sstart = 1;
Send = 256;

%Transconductance from Data
loglog(I_PMOS(2:end), diff(I_PMOS) ./ diff(V_PMOS), 'bo');
hold on;
% % %Theoretical Weak Inversion
loglog(I_PMOS(Wstart:Wend), (I_PMOS(Wstart:Wend)./Ut).*k, 'r-');
% % %Theoretical Strong Inversion
loglog(I_PMOS(Sstart:Send), sqrt(Is*I_PMOS(Sstart:Send)/Ut)*k, 'g-');

legend('Transconductance Gain','Weak Inversion $G_m = \frac{\kappa}{U_{T}} * I_{sat} = \frac{4.230}{0.025 (V)} * I_{sat}$', 'Strong Inversion $G_m = \kappa\frac{I_s * I_{sat}}{U_{T}} = 4.230 * \frac{7.0903*10^{-7} (A) * I_{sat}}{0.025 (V)}$','FontSize',14)
title('Transconductance Gain of a PMOS Transistor','FontSize',14)
xlabel('Current (A)')
ylabel('Transconductance Gain (Mhos)')