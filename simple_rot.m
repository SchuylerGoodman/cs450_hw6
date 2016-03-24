N = 256;

x = 0:N-1;

freq = 1;
y1 = sin(2*pi*freq*x/N);
xy1 = repmat(y1, N, 1);

freq = 2;
y2 = sin(2*pi*freq*x/N)';
xy2 = repmat(y2, 1, N);

xyrot = imrotate((xy1 + xy2), 30);
f_xyrot = fft2(ifftshift(xyrot));

f_min = min(min(f_xyrot));
f_max = max(max(f_xyrot));
f_norm = (f_xyrot - f_min) / (f_max - f_min);

imtool(xyrot);
imtool(abs(fftshift(f_norm)));