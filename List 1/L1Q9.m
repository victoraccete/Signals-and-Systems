syms y1(t)
syms y2(t)
% piecewise(t>=0, 1, 0) expressa a função degrau unitário
y1(t) = sin(t+2)*piecewise(t>=0, 1, 0);
y2(t) = exp(-2*t)*piecewise(t>=0, 1, 0);

y1_even = (1/2)*(y1(t) + y1(-t));
y1_odd = (1/2)*(y1(t) - y1(-t));
y2_even = (1/2)*(y2(t) + y2(-t));
y2_odd = (1/2)*(y2(t) - y2(-t));

fplot(y2_odd);
title('Componente ímpar de y2(t)');