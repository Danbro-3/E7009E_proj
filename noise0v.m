close all
clear
load('noise.mat')
sec1=second1(1:1801)-second1(1);
sec2=second2-second2(1);
Vn=Volt(1:1801)-mean(Volt(1:1801));
Vmax=Volt1;

% Plot noise
figure(1)
hold on
plot(sec1,Vn,'k')
plot([sec1(1) sec1(end)],[mean(abs(Vn)) mean(abs(Vn))],'--k','LineWidth',1.5)
title('Noise at 0Vpp input')
xlabel('time [s]')
ylabel('Volt Vpp')
legend('Noise [Vpp]','mean(abs(Noise)) [Vpp]')
grid on
axis([0 sec1(end) -0.02 0.02])

% Plot Vin=1.81Vpp
figure(2)
plot(sec2,Vmax,'k')
title('Vout at max Vpp input')
xlabel('time [s]')
ylabel('Volt [Vpp]')
grid on

% Get SNR
SNR=db(max(Vmax)/mean(abs(Vn)));