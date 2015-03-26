%Experiment 1 --------------------------------------
%NMOS:
% hold all;
% epsilon = 2*10^(-4);
% [Is, VT, kappa] = ekvfit(V_NMOS(15:end), I_NMOS(15:end), epsilon, ['on'])
%PMOS:

epsilon = 4.5*10^(-5);
[Is, VT, kappa] = ekvfit(V_PMOS(15:end), I_PMOS(15:end), epsilon, ['on'])

%Transconductance gain: ----------------------------
% clf;
% hold all;


% Is = 1.9633*10^(-6);
% Ut = .025; %Thermal voltage is 25 mV
% k = .2058;
% Wstart = 50;
% Wend = 65;
% Sstart = Wend + 50;
% %Transconductance from Data
% loglog(I_NMOS(2:end), diff(I_NMOS) ./ diff(V_NMOS));
% %Theoretical Weak Inversion
% loglog(I_NMOS(Wstart:Wend), (I_NMOS(Wstart:Wend)/Ut)*k);
% %Theoretical Strong Inversion
% loglog(I_NMOS(Sstart:end), sqrt(Is*I_NMOS(Sstart:end)/Ut)*k);
% legend('Transconductance Gain', 'G_m Weak Inversion', 'G_m Strong Inversion')
% title('Transconductance Gain of an NMOS Transistor','FontSize',14)
% xlabel('Current (A)')
% ylabel('Transconductance Gain (Mhos)')
