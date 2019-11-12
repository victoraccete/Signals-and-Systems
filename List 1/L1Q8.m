syms x1(t)
syms x2(t)
x1(t) = sin(pi*t) + pi/5;
x2(t) = piecewise((0 <= t) & (t < 4), t*exp(t/5), (4 <= t) & (t < 10), 9, ...
                  (10 <= t) & (t <= 15), -t+1, t < 15, 0);
% o fplot abaixo pode ser usado para verificar se a função converge ou não
% se a função não converge, ela tem energia infinita. 
fplot(x2(t), [0 15]);

F_energy = int(abs(x1)^2, t, 0, 15);
% F_power = (1/2)*vpaintegral(x1(t)^2, t, [-1 1]); 
% disp(F_power);
disp(vpa(F_energy));
