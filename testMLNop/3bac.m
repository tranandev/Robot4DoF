%--------------------------------------------------------------------------
% BAI TOAN DONG HOC NGUOC ROBOT CONG NGHIEP SCARA 3 BAC TU DO
%--------------------------------------------------------------------------
clc;
close all;
clear all;
%--------------------------------------------------------------------------
% THONG SO KICH THUOC CUA TAY MAY
%--------------------------------------------------------------------------
l1 = 500; %(mm)
l2 = 500; % (mm)
%--------------------------------------------------------------------------
% TOA DO DIEM TAC DONG CUOI
x = linspace(100,300,100); % (mm);
y = linspace(100,200,100); % (mm)
z = -150; % (mm)
%--------------------------------------------------------------------------
% TINH BAI TOAN DONG HOC NGUOC
%--------------------------------------------------------------------------
q2 = acos((x.*x+y.*y-l1*l1-l2*l2)/(2*l1*l2));
q1 = atan(y./x)- atan((l2*sin(q2))/(l1+l2*cos(q2)));
q3 = -z;
q2 = q2*180/pi;
q1 = q1*180/pi;
%--------------------------------------------------------------------------
disp('KET QUA CUA BAI TOAN DONG HOC NGUOC LA:')
disp('q1=');disp(q1);
disp('q2=');disp(q2);
disp('q3=');disp(q3);
%--------------------------------------------------------------------------
plot(q1,'-');
hold on;
plot(q2,'o');
grid on;
hold off;