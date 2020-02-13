% audio ruidoso de som de baleia

whaleFile = 'bluewhale.au';
[x,fs] = audioread(whaleFile);

figure(1)
plot(x)
xlabel('Número de amostras')
ylabel('Amplitude')

% então vamos pegar o primeiro gemido da baleia para nossa análise
moan = x(2.45e4:3.10e4);
t = 10*(0:1/fs:(length(moan)-1)/fs); %fator 10 para acelerar

figure(2)
plot(t,moan)
xlabel('Tempo (s)')
ylabel('Amplitude')
xlim([0 t(end)])

% calculando a transformada
n = length(moan);
y = fft(moan,n); 

% precisamos ajustar a range por causa do fator 10 usado anteriormente
f = (0:n-1)*(fs/n)/10;
power = abs(y).^2/n;      
figure(3)
% floor arredonda o número para um inteiro
plot(f(1:floor(n/2)),power(1:floor(n/2)))
xlabel('Frequência')
ylabel('Magnitude')