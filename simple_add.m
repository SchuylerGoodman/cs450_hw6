N = 256;

x = 0:N-1;

freq = 1;
y1 = sin(2*pi*freq*x/N);
xy1 = repmat(y1, N, 1);

freq = 2;
y2 = sin(2*pi*freq*x/N)';
xy2 = repmat(y2, 1, N);

xyadd = xy1 + xy2;
f_xyadd = fft2(ifftshift(xyadd));

imtool(xyadd);
imtool(abs(fftshift(f_xyadd)));