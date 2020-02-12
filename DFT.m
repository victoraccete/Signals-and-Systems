Fs = 500;            % Frequ�ncia                    
T = 1/Fs;             % Per�odo       
L = 1000;             % Comprimento do sinal
t = (0:L-1)*T;        % Time vector

% Formando um sinal S composto por duas senoides
% Uma de amplitude 0.7 e frequ�ncia de 50 Hz
% e a outra de amplitude 1 e frequ�ncia de 120 Hz
S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

% colocar para plotar os sinais com subplot

% Corrompendo um sinal com um ru�do
X = S + 2*randn(size(t));

plot(1000*t(1:50),X(1:50))
title('Sinal corrompido com ru�do')
xlabel('t (em milissegundos)')
ylabel('X(t)')

% calculando a transformada de Fourier do sinal X
Y = fft(X);
% continua https://www.mathworks.com/help/matlab/ref/fft.html
