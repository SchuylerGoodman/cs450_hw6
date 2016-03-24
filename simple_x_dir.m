N = 256;

x = 0:N-1;

freq = 1;
y1 = sin(2*pi*freq*x/N);
xy1 = repmat(y1, N, 1);

freq = 32;
y32 = sin(2*pi*freq*x/N);
xy32 = repmat(y32, N, 1);

freq = 100;
y100 = sin(2*pi*freq*x/N);
xy100 = repmat(y100, N, 1);

f_xy1 = fft2(ifftshift(xy1));
f_xy32 = fft2(ifftshift(xy32));
f_xy100 = fft2(ifftshift(xy100));

imtool(xy1);
imtool(abs(fftshift(f_xy1)));

imtool(xy32);
imtool(abs(fftshift(f_xy32)));

imtool(xy100);
imtool(abs(fftshift(f_xy100)));