clear all
close all
clc


for i=[1];
%% Antenne fouet dans l'eau douce avec d = 25cm

temp0 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_antennefouet9.dat');
mag9 = temp9.Var4;
mag_antenne_fouet_eau_25 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne fouet dans l'eau douce avec d = 50cm

temp0 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_antennefouet9.dat');
mag9 = temp9.Var4;
mag_antenne_fouet_eau_50 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne fouet dans l'eau douce avec d = 91cm

temp0 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_antennefouet9.dat');
mag9 = temp9.Var4;
mag_antenne_fouet_eau_91 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

freq_air = temp0.Var1;
figure(1)
hold on
plot(frequency,mag_antenne_fouet_eau_25,frequency,mag_antenne_fouet_eau_50,frequency,mag_antenne_fouet_eau_91);
title('Absorption de l eau douce avec antenne fouet en transmission et reception');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('d = 25cm(eau)','d = 50cm(eau)','d = 91cm(eau)','d = 25cm(air)','d = 50cm(air)','d = 91cm(air)');
xlim([0 2000]);




%% Antenne large bande dans l'eau douce avec d = 25cm

temp0 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_largebande9.dat');
mag9 = temp9.Var4;
mag_antenne_largebande_eau_25 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne large bande dans l'eau douce avec d = 50cm

temp0 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_largebande9.dat');
mag9 = temp9.Var4;
mag_antenne_largebande_eau_50 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne large bande dans l'eau douce avec d = 91cm

temp0 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_largebande9.dat');
mag9 = temp9.Var4;
mag_antenne_largebande_eau_91 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

figure(2)
plot(frequency,mag_antenne_largebande_eau_25,frequency,mag_antenne_largebande_eau_50,frequency,mag_antenne_largebande_eau_91);
title('Absorption de l eau douce avec antenne largebande en transmission et reception');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('Abs pour 25cm','Abs pour 50cm','Abs pour 91cm');


%% Antenne LoRa dans l'eau douce avec d = 25cm

temp0 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_25_ambiante/eau_LoRa9.dat');
mag9 = temp9.Var4;
mag_antenne_LoRa_eau_25 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne LoRa dans l'eau douce avec d = 50cm

temp0 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_50_ambiante/eau_LoRa9.dat');
mag9 = temp9.Var4;
mag_antenne_LoRa_eau_50 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne LoRa dans l'eau douce avec d = 91cm

temp0 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_91_ambiante/eau_LoRa9.dat');
mag9 = temp9.Var4;
mag_antenne_LoRa_eau_91 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

figure(3)
hold on
plot(frequency,mag_antenne_LoRa_eau_25,frequency,mag_antenne_LoRa_eau_50,frequency,mag_antenne_LoRa_eau_91);
title('Absorption de l eau douce avec antenne LoRa en transmission et reception');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('Abs pour 25cm','Abs pour 50cm','Abs pour 91cm');

end%%Mesures dans l'eau douce
for i=[1];
%% Antenne fouet dans l'eau salée avec d = 25cm

temp0 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_antennefouet9.dat');
mag9 = temp9.Var4;
mag_antenne_fouet_eau_sel_25 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne fouet dans l'eau salée avec d = 50cm

temp0 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_antennefouet9.dat');
mag9 = temp9.Var4;
mag_antenne_fouet_eau_sel_50 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne fouet dans l'eau salée avec d = 91cm

temp0 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_antennefouet9.dat');
mag9 = temp9.Var4;
mag_antenne_fouet_eau_sel_91 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

freq_air = temp0.Var1;
figure(1)
plot(frequency,mag_antenne_fouet_eau_sel_25,frequency,mag_antenne_fouet_eau_sel_50,frequency,mag_antenne_fouet_eau_sel_91);
title('Absorption avec antenne fouet en transmission et reception');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('d = 25cm(eau douce)','d = 50cm(eau douce)','d = 91cm(eau douce)','d = 25cm(eau salée)','d = 50cm(eau salée)','d = 91cm(eau salée)');
xlim([0 2000]);


%% Antenne large bande dans l'air avec d = 25/50/91cm
temp0 = readtable('10MHz-2GHz/Eau_salée_25_Ambiante/eau_sel_largebande0.dat');
mag_antenne_largebande_eau_sel = temp0.Var4;
%% Antenne LoRa dans l'eau salée avec d = 25cm

temp0 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_salée_25_ambiante/eau_sel_LoRa9.dat');
mag9 = temp9.Var4;
mag_antenne_LoRa_eau_sel_25 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne LoRa dans l'eau salée avec d = 50cm

temp0 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_salée_50_ambiante/eau_sel_LoRa9.dat');
mag9 = temp9.Var4;
mag_antenne_LoRa_eau_sel_50 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne LoRa dans l'eau salée avec d = 91cm

temp0 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Eau_salée_91_ambiante/eau_sel_LoRa9.dat');
mag9 = temp9.Var4;
mag_antenne_LoRa_eau_sel_91 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

figure(3)
plot(frequency,mag_antenne_LoRa_eau_sel_25,frequency,mag_antenne_LoRa_eau_sel_50,frequency,mag_antenne_LoRa_eau_sel_91);
title('Absorption avec antenne LoRa en transmission et reception');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('d = 25cm(eau douce)','d = 50cm(eau douce)','d = 91cm(eau douce)','d = 25cm(eau salée)','d = 50cm(eau salée)','d = 91cm(eau salée)');

end%%Mesures dans l'eau salée
for i=[1];
    %% Antenne fouet dans l'air avec d = 25cm

temp0 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Air_25_ambiante/air_antennefouet9.dat');
mag9 = temp9.Var4;
mag_antenne_fouet_air_25 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne fouet dans l'air avec d = 50cm

temp0 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Air_50_ambiante/air_antennefouet9.dat');
mag9 = temp9.Var4;
mag_antenne_fouet_air_50 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne fouet dans l'air avec d = 91cm

temp0 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Air_91_ambiante/air_antennefouet9.dat');
mag9 = temp9.Var4;
mag_antenne_fouet_air_91 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

freq_air = temp0.Var1;
figure(1)
hold on
plot(frequency,mag_antenne_fouet_air_25,frequency,mag_antenne_fouet_air_50,frequency,mag_antenne_fouet_air_91);
title('Absorption de l antenne fouet en transmission et reception');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('d = 25cm(eau douce)','d = 50cm(eau douce)','d = 91cm(eau douce)','d = 25cm(eau salée)','d = 50cm(eau salée)','d = 91cm(eau salée)','d = 25cm(air)','d = 50cm(air)','d = 91cm(air)');
xlim([0 2000]);




%% Antenne large bande dans l'air avec d = 25cm

temp0 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Air_25_ambiante/air_largebande9.dat');
mag9 = temp9.Var4;
mag_antenne_largebande_air_25 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne large bande dans l'eau douce avec d = 50cm

temp0 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Air_50_ambiante/air_largebande9.dat');
mag9 = temp9.Var4;
mag_antenne_largebande_air_50 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne large bande dans l'air avec d = 91cm

temp0 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Air_91_ambiante/air_largebande9.dat');
mag9 = temp9.Var4;
mag_antenne_largebande_air_91 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

figure(2)
plot(frequency,mag_antenne_largebande_air_25,frequency,mag_antenne_largebande_air_50,frequency,mag_antenne_largebande_air_91);
title('Absorption de avec antenne largebande en transmission et reception');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('Abs pour 25cm','Abs pour 50cm','Abs pour 91cm');


%% Antenne LoRa dans l'air avec d = 25cm

temp0 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Air_25_ambiante/air_LoRa9.dat');
mag9 = temp9.Var4;
mag_antenne_LoRa_air_25 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne LoRa dans l'air avec d = 50cm

temp0 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Air_50_ambiante/air_LoRa9.dat');
mag9 = temp9.Var4;
mag_antenne_LoRa_air_50 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

%%Antenne LoRa dans l'air avec d = 91cm

temp0 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa0.dat');
mag0 = temp0.Var4;
frequency = temp0.Var1;
temp1 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa1.dat');
mag1 = temp1.Var4;
temp2 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa2.dat');
mag2 = temp2.Var4;
temp3 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa3.dat');
mag3 = temp3.Var4;
temp4 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa4.dat');
mag4 = temp4.Var4;
temp5 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa5.dat');
mag5 = temp5.Var4;
temp6 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa6.dat');
mag6 = temp6.Var4;
temp7 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa7.dat');
mag7 = temp7.Var4;
temp8 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa8.dat');
mag8 = temp8.Var4;
temp9 = readtable('10MHz-2GHz/Air_91_ambiante/air_LoRa9.dat');
mag9 = temp9.Var4;
mag_antenne_LoRa_air_91 = (mag0+mag1+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9)/10;

figure(3)
hold on
plot(frequency,mag_antenne_LoRa_air_25,frequency,mag_antenne_LoRa_air_50,frequency,mag_antenne_LoRa_air_91);
title('Absorption avec antenne LoRa en transmission et reception');
xlabel('Fréquence (MHz)');
ylabel('Absorption (dB)');
legend('d = 25cm(eau douce)','d = 50cm(eau douce)','d = 91cm(eau douce)','d = 25cm(eau salée)','d = 50cm(eau salée)','d = 91cm(eau salée)','d = 25cm(air)','d = 50cm(air)','d = 91cm(air)');

end%%Mesures dans l'air

for i=[1];
%En prenant l'absoprtion dans l'air comme reference on peux sortir l'effet
%de l'eau douce et de l'eau salée.

%% Effet eau douce
%Antenne fouet
effet_antenne_fouet_eau_25 = mag_antenne_fouet_air_25 - mag_antenne_fouet_eau_25;
effet_antenne_fouet_eau_50 = mag_antenne_fouet_air_50 - mag_antenne_fouet_eau_50;
effet_antenne_fouet_eau_91 = mag_antenne_fouet_air_91 - mag_antenne_fouet_eau_91;
%Antenne large bande
effet_antenne_largebande_eau_25 = mag_antenne_largebande_air_25 - mag_antenne_largebande_eau_25;
effet_antenne_largebande_eau_50 = mag_antenne_largebande_air_50 - mag_antenne_largebande_eau_50;
effet_antenne_largebande_eau_91 = mag_antenne_largebande_air_91 - mag_antenne_largebande_eau_91;
%Antenne LoRa
effet_antenne_LoRa_eau_25 = mag_antenne_LoRa_air_25 - mag_antenne_LoRa_eau_25;
effet_antenne_LoRa_eau_50 = mag_antenne_LoRa_air_50 - mag_antenne_LoRa_eau_50;
effet_antenne_LoRa_eau_91 = mag_antenne_LoRa_air_91 - mag_antenne_LoRa_eau_91;
%% Effet eau salée
%Antenne fouet
effet_antenne_fouet_sel_25 = mag_antenne_fouet_air_25 - mag_antenne_fouet_eau_sel_25;
effet_antenne_fouet_sel_50 = mag_antenne_fouet_air_50 - mag_antenne_fouet_eau_sel_50;
effet_antenne_fouet_sel_91 = mag_antenne_fouet_air_91 - mag_antenne_fouet_eau_sel_91;
%Antenne large bande

%Antenne LoRa
effet_antenne_LoRa_sel_25 = mag_antenne_LoRa_air_25 - mag_antenne_LoRa_eau_sel_25;
effet_antenne_LoRa_sel_50 = mag_antenne_LoRa_air_50 - mag_antenne_LoRa_eau_sel_50;
effet_antenne_LoRa_sel_91 = mag_antenne_LoRa_air_91 - mag_antenne_LoRa_eau_sel_91;


figure(4)
%plot eau salée brut
semilogx(frequency,-mag_antenne_fouet_eau_sel_25,frequency,-mag_antenne_fouet_eau_sel_50,frequency,-mag_antenne_fouet_eau_sel_91);
hold on
semilogx(frequency,-mag_antenne_LoRa_eau_sel_25,frequency,-mag_antenne_LoRa_eau_sel_50,frequency,-mag_antenne_LoRa_eau_sel_91);
legend('Fouet 25cm','Fouet 50cm','Fouet 91cm','LoRa 25cm','LoRa 50cm','LoRa 91cm') %plot eau salée différence
%semilogx(frequency,effet_antenne_fouet_sel_25,frequency,effet_antenne_fouet_sel_50,frequency,effet_antenne_fouet_sel_91);
%hold on
%semilogx(frequency,effet_antenne_LoRa_sel_25,frequency,effet_antenne_LoRa_sel_50,frequency,effet_antenne_LoRa_sel_91);
%plot eau douce différence
%semilogx(frequency,effet_antenne_fouet_eau_25,frequency,effet_antenne_fouet_eau_50,frequency,effet_antenne_fouet_eau_91);
%semilogx(frequency,effet_antenne_largebande_eau_25,frequency,effet_antenne_largebande_eau_50,frequency,effet_antenne_largebande_eau_91);
%semilogx(frequency,effet_antenne_LoRa_eau_25,frequency,effet_antenne_LoRa_eau_50,frequency,effet_antenne_LoRa_eau_91);
end%%Analyse

for i=[1];
for d=[0.25,0.5,0.91]
    epsilon0 = 8.85e-12;
    mu = pi*4e-7;
    %d = 1;
    fMHz = logspace(1,4,1000);
    f = fMHz*10e6;
    T = 20;
    S = 35;

    %% epsilon et sigma

    %delta = 25 - T;
    %phi = delta.*((2.033e-2)+(1.266e-4.*delta)+(2.464e-6.*delta.^2))-S*((1.849e-5)-(2.551e-7.*delta)+(2.551e-8.*delta.^2));
    %sigma0=S*((0.18252)-(1.4619e-3*S)+(2.093e-5*S^2)-(1.282e-7*S^3));
    %sigma = sigma0*exp(-phi);
    sigma = 4.9;  
    epsiloninf = 4.9;
    epsilonzero = (1+1.613e-5*T*S-3.656e-3*S+3.21e-5*S^2-4.232e-7*S^3).*(87.134-1.949e-1*T-1.276e-2*T^2+2.491e-4*T^3);
    theta =((1/(2*pi))*(1.11e-10-3.824e-12*T+6.938e-14*T.^2-5.096e-16*T.^3));

    epsilon = epsiloninf + ((epsilonzero - epsiloninf)./(1+1i*2*pi*f*theta)) + sigma./(2*pi*f*epsilon0);

    %% absorption

    gamma = 1i*2*pi*f.*sqrt((mu*epsilon) - 1i*((sigma*mu)./(2*pi*f)));
    alpha = 2*pi*f.*sqrt(mu.*(epsilon*epsilon0)).*(1/2*(sqrt(1+(sigma./(2*pi*f.*(epsilon*epsilon0))).^2)-1)).^0.5;
    Latt = 10*log10(exp(2*alpha*d));


    %semilogx(fMHz,Latt);
    
end
 xlim([10^1 2e3]);
 title('Absorption eau salée en fonction de la fréquence');
 xlabel('Fréquence (MHz)');
 ylabel('Absorption (dB)');
 %legend('d=25cm','d=50cm','d=91cm');
end%%Simulation

