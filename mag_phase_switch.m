ball = imread('ball.png');
gull = imread('gull.png');

imtool(ball);
imtool(gull);

f_ball = fft2(ifftshift(ball));
f_gull = fft2(ifftshift(gull));

ball_phase = angle(f_ball);
ball_mag = abs(f_ball);

gull_phase = angle(f_gull);
gull_mag = abs(f_gull);

f_gullphase_ballmag = pol2cart(gull_phase, ball_mag);
f_ballphase_gullmag = pol2cart(ball_phase, gull_mag);

gullphase_ballmag = ifftshift(ifft2(f_gullphase_ballmag));
ballphase_gullmag = ifftshift(ifft2(f_ballphase_gullmag));

mi = min(min(gullphase_ballmag));
ma = max(max(gullphase_ballmag));
gullphase_ballmag = (gullphase_ballmag - mi) / (ma - mi);
imtool(gullphase_ballmag);

mi = min(min(ballphase_gullmag));
ma = max(max(ballphase_gullmag));
ballphase_gullmag = (ballphase_gullmag - mi) / (ma - mi);
imtool(ballphase_gullmag);
