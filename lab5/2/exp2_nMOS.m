hold on
semilogy(flipud(V_Sn), I_sn, 'o');
V_t = 0.5842
I_s = 1.9633e-06;
k = 0.7058;
V_g = 5;
U_T = .025;
I_sat = zeros(25, 1);
for i=1:length(I_sat)-1
    I_sat(i) = I_s*exp(k*((V_g - V_t) - V_Sn(i))/U_T);
end
semilogy(flipud(V_Sn(1:25)), I_sat)
