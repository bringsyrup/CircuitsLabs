clf;
hold on
for i = 1:16
    plot(i-1, originalChip(:, i) - ((i-1) ./ 15 .* 5), 'bo')
    plot(i-1, R1025(:, i) - ((i-1) ./ 15 .* 5), 'ro')
    plot(i-1, R1047(:, i) - ((i-1) ./ 15 .* 5), 'go')
    plot(i-1, R1074(:, i) - ((i-1) ./ 15 .* 5), 'co')
    plot(i-1, R1134(:, i) - ((i-1) ./ 15 .* 5), 'ko')
    plot(i-1, R1185(:, i) - ((i-1) ./ 15 .* 5), 'mo')
end

ylabel('Output Voltage Difference from Theoretical (V)')
xlabel('Input value (Translated to Respective Bit Value')
title('Output Voltage Difference from Theoretical')