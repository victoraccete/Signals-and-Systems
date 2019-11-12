syms x(t)
x(t) = piecewise(t>=0, -t^2 + 5*t -10, 0);
fplot(x(t));
title('Letra X');
hold on;
% Modificar a linha abaixo para modificar o novo sinal.
fplot(x(t/3));
xlim([-5 15]);
legend('Sinal original','Novo sinal');
hold off;
