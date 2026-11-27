clc, clear, close all;

ds = datastore('Devo master 2024.csv');
table = read(ds);

%table(1,:)

table2 = table(261:283,:);

table31 = table2(:,1:10);
table32 = table2(:,19:24);

table3(:,1:10) = table31;
table3(:,11:16) = table32;

writetable(table3,'tableFile.csv');

