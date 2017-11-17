close all
clear
load('thd_workspace.mat');

% THD for 1w
figure(1)
[thd1w_db,harmpow1w,harmfreq1w] = thd(Volt1w/(2*sqrt(2)),1/(second1w(2)-second1w(1)),6);
percent_thd1w = 100*(10^(thd1w_db/20));
%1/(second1w(2)-second1w(1))
thd(Volt1w/(2*sqrt(2)),1/(second1w(2)-second1w(1)),6);
table1w=table(harmfreq1w,harmpow1w,'VariableNames',{'Frequency','Power'});
title('MatLAB THD measurements 1W')

% THD for 10w
figure(2)
[thd10w_db,harmpow10w,harmfreq10w] = thd(Volt10w/(2*sqrt(2)),1/(second10w(2)-second10w(1)),6);
percent_thd10w = 100*(10^(thd10w_db/20));
%1/(second10w(2)-second10w(1))
thd(Volt10w/(2*sqrt(2)),1/(second10w(2)-second10w(1)),6);
table10w=table(harmfreq10w,harmpow10w,'VariableNames',{'Frequency','Power'});
title('MatLAB THD measurements 10W')

% THD for 30w
figure(3)
[thd30w_db,harmpow30w,harmfreq30w] = thd(Volt30w(1:1388)/(2*sqrt(2)),1/(second30w(2)-second30w(1)),6);
percent_thd30w = 100*(10^(thd30w_db/20));
%1/(second30w(2)-second30w(1))
thd(Volt30w(1:1388)/(2*sqrt(2)),1/(second30w(2)-second30w(1)),6);
table30w=table(harmfreq30w,harmpow30w,'VariableNames',{'Frequency','Power'});
title('MatLAB THD measurements 30W')