byu = imread('BYU.jpg');
template = imread('admin_template.jpg');
[by, bx] = size(byu);
[ty, tx] = size(template);
Ga = fft2(byu);
Gb = fft2(template, by, bx);
c = real(ifft2((Ga.*conj(Gb))./abs(Ga.*conj(Gb))));
[ypeak, xpeak] = find(c == max(c(:)));