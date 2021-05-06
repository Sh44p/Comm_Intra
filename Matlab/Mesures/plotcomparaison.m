function plotcomparaison(data_air,data_eau,nom_antenne)

table_air = readtable(data_air);
table_eau = readtable(data_eau);


frequency = table_air.Var1;


S11mag_air = table_air.Var2;
S11phase_air = table_air.Var3;

S12mag_air = table_air.Var4;
max(S12mag_air)
S12phase_air = table_air.Var5;

S21mag_air = table_air.Var6;
S21phase_air = table_air.Var7;

S22mag_air = table_air.Var8;
S22phase_air = table_air.Var9;

%frequency = table_eau.Var1;
S11mag_eau = table_eau.Var2;
S11phase_eau = table_eau.Var3;

S12mag_eau = table_eau.Var4;
max(S12mag_eau)
S12phase_eau = table_eau.Var5;

S21mag_eau = table_eau.Var6;
S21phase_eau = table_eau.Var7;

S22mag_eau = table_eau.Var8;
S22phase_eau = table_eau.Var9;

% Plot Data for all S-parameters
    subplot(2,2,1);
    plot(frequency, S11mag_air,frequency, S11mag_eau);
    xlabel('Frequency (MHz)');
    ylabel('Magnitude (dB)');
    %ylim([minS11 maxS11]);
    title('S11')
    
    subplot(2,2,2);
    plot(frequency, S12mag_air,frequency, S12mag_eau);
    xlabel('Frequency (MHz)');
    ylabel('Magnitude (dB)');
    %ylim([minS12 maxS12]);
    title('S12');
    
    subplot(2,2,3);
    plot(frequency, S21mag_air,frequency, S21mag_eau);
    xlabel('Frequency (MHz)');
    ylabel('Magnitude (dB)');
    %ylim([minS21 maxS21]);
    title('S21');
    
    subplot(2,2,4);
    plot(frequency, S22mag_air,frequency, S22mag_eau);
    xlabel('Frequency (MHz)');
    ylabel('Magnitude (dB)');
    %ylim([minS22 maxS22]);
    title('S22');
    sgtitle(nom_antenne);
end
