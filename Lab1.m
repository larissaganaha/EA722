% EA722 - Lab 1

Jo = 0.024264
g = 9.8
c1 = 0.2254
cr =  0.0144
m1 = 0.2376
kv = 0.01
mw2 = 1
m2o = 0.785
lw2 =  -0.1375
lo = 0.33
ka = 2546
kx = 50200
kf = 0.0013
ks = 32
khw = ks * kf * kx
lco = 0.071 

% Exerc?cio 3a
ts = 0
Gps = tf([khw], [m1, (c1 + khw * kv), ts])

% Exerc?cio 3b
Gpr = tf(1, [m1, (c1 + khw * kv), ts])

% Exerc?cio 3c
kp = 0.2
Gpf = 1
Gf = feedback(kp*Gps, Gpf)

% Exerc?cios 3d
Gf_zero = dcgain(Gf)
step(Gf)

% Exerc?cio 3e
step(kp*Gps)




