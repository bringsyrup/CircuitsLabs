clc; clf;
%Experiment 1 --------------------------------------
%NMOS:
% hold all;
% epsilon = 2*10^(-4);
% [Is, VT, kappa] = ekvfit(V_NMOS(15:end), I_NMOS(15:end), epsilon, ['on'])
%   -- FINAL
%PMOS:
% epsilon = 2.5*10^(-4); % N > 4;
% epsilon = 2.75*10^(-3); % N > 6;
% epsilon = 2.45*10^(-4); % N > 4; Is = 5.8599e-06 VT = 4.2002; kappa = -0.4305
% epsilon = 4.5*10^(-4); % N > 4; Is = 5.9483e-06; VT = 4.1984; kappa =
%    -0.4382 -- FINAL
% [Is, VT, kappa] = ekvfit(V_PMOS(15:end), I_PMOS(15:end), epsilon, ['on'])

%Transconductance gain: ----------------------------
clf;
hold all;

% %NMOS
% Is = 1.9633*10^(-6);
% Ut = .025; %Thermal voltage is 25 mV
% k = .7058;
% Wstart = 50;
% Wend = 65;
% Sstart = Wend + 50;
% 
% %Transconductance from Data
% loglog(I_NMOS(2:end), diff(I_NMOS) ./ diff(V_NMOS), 'bo');
% 
% %Theoretical Weak Inversion
% loglog(I_NMOS(Wstart:Wend), (I_NMOS(Wstart:Wend)/Ut)*k, 'r-');
% %Theoretical Strong Inversion
% loglog(I_NMOS(Sstart:end), sqrt(Is*I_NMOS(Sstart:end)/Ut)*k, 'g-');
% 
% legend('Transconductance Gain','G_m Weak Inversion', 'G_m Strong Inversion')
% title('Transconductance Gain of an NMOS Transistor','FontSize',14)
% xlabel('Current (A)')
% ylabel('Transconductance Gain (Mhos)')

% %PMOS
% Is = 5.9483*10^(-6);
% Ut = .025; %Thermal voltage is 25 mV
% k = 5 - .4382;
% Wstart = 1;
% Wend = 40;
% Sstart = Wend + 50;
% Send = 250;
% 
% %Transconductance from Data
% loglog(I_NMOS(2:end), diff(I_NMOS) ./ diff(V_NMOS), 'bo');
% 
% %Theoretical Weak Inversion
% loglog(I_NMOS(Wstart:Wend), (I_NMOS(Wstart:Wend)/Ut)*k, 'r-');
% %Theoretical Strong Inversion
% loglog(I_NMOS(Sstart:Send), sqrt(Is*I_NMOS(Sstart:Send)/Ut)*k, 'g-');
% 
% legend('Transconductance Gain','G_m Weak Inversion', 'G_m Strong Inversion')
% title('Transconductance Gain of a PMOS Transistor','FontSize',14)
% xlabel('Current (A)')
% ylabel('Transconductance Gain (Mhos)')

