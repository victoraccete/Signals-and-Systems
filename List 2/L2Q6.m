x = [0 0 0 1 -2 -3 1 2 4 0 0];
h = [0 0 1 2 3 0 -2 -3 0 1 0];
g = [0 0 0 0 1 0 -1 0 0 0 0];
%stem(g);
%title("g[n]");
convolution = conv(g, h);
disp(convolution);
stem(convolution);
title("y3[n]");