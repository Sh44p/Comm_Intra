clear all
close all
clc
figure(1)
for T=[4,10,20,25]
epsilon0 = 8.85e-12;
mu = pi*4e-7;
d = 1;
f = logspace(4,10,1000);

%T = 25;
S = 35;

%% epsilon et sigma

delta = 25 - T;
phi = delta.*((2.033e-2)+(1.266e-4.*delta)+(2.464e-6.*delta.^2))-S*((1.849e-5)-(2.551e-7.*delta)+(2.551e-8.*delta.^2));
sigma0=S*((0.18252)-(1.4619e-3*S)+(2.093e-5*S^2)-(1.282e-7*S^3));
sigma = sigma0*exp(-phi);

epsiloninf = 4.9;
epsilonzero = (1+1.613e-5*T*S-3.656e-3*S+3.21e-5*S^2-4.232e-7*S^3).*(87.134-1.949e-1*T-1.276e-2*T^2+2.491e-4*T^3);
theta =((1/(2*pi))*(1.11e-10-3.824e-12*T+6.938e-14*T.^2-5.096e-16*T.^3));

epsilon = epsiloninf + ((epsilonzero - epsiloninf)./(1+1i*2*pi*f*theta)) + sigma./(2*pi*f*epsilon0);

%% absorption

gamma = 1i*2*pi*f.*sqrt((mu*epsilon) - 1i*((sigma*mu)./(2*pi*f)));
alpha = 2*pi*f.*sqrt(mu.*(epsilon*epsilon0)).*(1/2*(sqrt(1+(sigma./(2*pi*f.*(epsilon*epsilon0))).^2)-1)).^0.5;
Latt = 10*log10(exp(2*alpha*d));


semilogx(f,Latt);
xlim([10^4 10^7]);
title('Absorption eau salée en fonction de la fréquence');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('T=4°C','T=10°C','T=15°C','T=20°C','T=25°C');
hold on
end%%Fonction de la temperature
hold off
figure(2)
for S=[4,15,25,35]
epsilon0 = 8.85e-12;
mu = pi*4e-7;
d = 1;
f = logspace(4,10,1000);

T = 25;
%S = 35;

%% epsilon et sigma

delta = 25 - T;
phi = delta.*((2.033e-2)+(1.266e-4.*delta)+(2.464e-6.*delta.^2))-S*((1.849e-5)-(2.551e-7.*delta)+(2.551e-8.*delta.^2));
sigma0=S*((0.18252)-(1.4619e-3*S)+(2.093e-5*S^2)-(1.282e-7*S^3));
sigma = sigma0*exp(-phi);

epsiloninf = 4.9;
epsilonzero = (1+1.613e-5*T*S-3.656e-3*S+3.21e-5*S^2-4.232e-7*S^3).*(87.134-1.949e-1*T-1.276e-2*T^2+2.491e-4*T^3);
theta =((1/(2*pi))*(1.11e-10-3.824e-12*T+6.938e-14*T.^2-5.096e-16*T.^3));

epsilon = epsiloninf + ((epsilonzero - epsiloninf)./(1+1i*2*pi*f*theta)) + sigma./(2*pi*f*epsilon0);

%% absorption

gamma = 1i*2*pi*f.*sqrt((mu*epsilon) - 1i*((sigma*mu)./(2*pi*f)));
alpha = 2*pi*f.*sqrt(mu.*(epsilon*epsilon0)).*(1/2*(sqrt(1+(sigma./(2*pi*f.*(epsilon*epsilon0))).^2)-1)).^0.5;
Latt = 10*log10(exp(2*alpha*d));


semilogx(f,Latt);
xlim([10^4 10^7]);
title('Absorption eau salée en fonction de la fréquence');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('S=4g/kg','S=15g/kg','S=25g/kg','S=35g/kg');
hold on
end%%Fonction de la salinité
hold off
figure(3)
for d=[0.25,0.5,0.91]
epsilon0 = 8.85e-12;
mu = pi*4e-7;
%d = 1;
f = logspace(4,10,1000);

T = 25;
S = 35;

%% epsilon et sigma

delta = 25 - T;
phi = delta.*((2.033e-2)+(1.266e-4.*delta)+(2.464e-6.*delta.^2))-S*((1.849e-5)-(2.551e-7.*delta)+(2.551e-8.*delta.^2));
sigma0=S*((0.18252)-(1.4619e-3*S)+(2.093e-5*S^2)-(1.282e-7*S^3));
sigma = sigma0*exp(-phi);

epsiloninf = 4.9;
epsilonzero = (1+1.613e-5*T*S-3.656e-3*S+3.21e-5*S^2-4.232e-7*S^3).*(87.134-1.949e-1*T-1.276e-2*T^2+2.491e-4*T^3);
theta =((1/(2*pi))*(1.11e-10-3.824e-12*T+6.938e-14*T.^2-5.096e-16*T.^3));

epsilon = epsiloninf + ((epsilonzero - epsiloninf)./(1+1i*2*pi*f*theta)) + sigma./(2*pi*f*epsilon0);

%% absorption

gamma = 1i*2*pi*f.*sqrt((mu*epsilon) - 1i*((sigma*mu)./(2*pi*f)));
alpha = 2*pi*f.*sqrt(mu.*(epsilon*epsilon0)).*(1/2*(sqrt(1+(sigma./(2*pi*f.*(epsilon*epsilon0))).^2)-1)).^0.5;
Latt = 10*log10(exp(2*alpha*d));


semilogx(f,Latt);
xlim([10^4 10^7]);
title('Absorption eau salée en fonction de la fréquence');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('d=25cm','d=50cm','d=91cm');
hold on
end%%Fonction de la distance
hold off
figure(4)
for f=[0.1e6,1e6,10e6]
epsilon0 = 8.85e-12;
mu = pi*4e-7;
d = 1;
%f = logspace(4,10,1000);

%T = 25;
T = linspace(0,40,100);
S = 35;

%% epsilon et sigma

delta = 25 - T;
phi = delta.*((2.033e-2)+(1.266e-4.*delta)+(2.464e-6.*delta.^2))-S*((1.849e-5)-(2.551e-7.*delta)+(2.551e-8.*delta.^2));
sigma0=S*((0.18252)-(1.4619e-3*S)+(2.093e-5*S^2)-(1.282e-7*S^3));
sigma = sigma0*exp(-phi);

epsiloninf = 4.9;
epsilonzero = (1+1.613e-5*T*S-3.656e-3*S+3.21e-5*S^2-4.232e-7*S^3).*(87.134-1.949e-1*T-1.276e-2*T.^2+2.491e-4*T.^3);
theta =((1/(2*pi))*(1.11e-10-3.824e-12*T+6.938e-14*T.^2-5.096e-16*T.^3));

epsilon = epsiloninf + ((epsilonzero - epsiloninf)./(1+1i*2*pi*f*theta)) + sigma./(2*pi*f*epsilon0);

%% absorption

gamma = 1i*2*pi*f.*sqrt((mu*epsilon) - 1i*((sigma*mu)./(2*pi*f)));
alpha = 2*pi*f.*sqrt(mu.*(epsilon*epsilon0)).*(1/2*(sqrt(1+(sigma./(2*pi*f.*(epsilon*epsilon0))).^2)-1)).^0.5;
Latt = 10*log10(exp(2*alpha*d));


plot(T,Latt);
title('Absorption eau salée avec variation de temperature');
xlabel('Température (°C)');
ylabel('Absorption (dB)');
legend('0.1 MHz','1 MHz','10 MHz');
xlim([0 40]);
hold on
end%%Fonction de la température