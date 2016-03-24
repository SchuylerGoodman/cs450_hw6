N = 256;

x = 0:N-1;

freq = 2;
y2 = sin(2*pi*freq*x/N)';
xy2 = repmat(y2, 1, N);

f_xy2 = fft2(ifftshift(xy2));

imtool(xy2);
imtool(abs(fftshift(f_xy2)));