function [mag_diff] = absorb_diff (data_air,data_eau)
table1 = readtable(data_air);
table2 = readtable(data_eau);
variable1 = table1.Var4;
variable2 = table2.Var4;
mag_diff = abs(variable1 - variable2);

end