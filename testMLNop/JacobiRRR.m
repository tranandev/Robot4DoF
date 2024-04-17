% ---- chuong trinh tinh ma tran Jacobi cho tay may toa do cau RRR
%--------------------------------------------------------------------------
clc;
close all;
clear all;
%--------------------------------------------------------------------------
% khai bao cac bien
syms q1 q2 q3 % cac bien khop
syms l1 l2 l3% kich thuoc tay may
syms vx vy vz % van toc theo cac truc x, y z
v(1,1) = vx;
v(2,1) = vy;
v(3,1) = vz;
%--------------------------------------------------------------------------
% ket qua bai toan dong hoc thuan
x = cos(q1)*(l2*cos(q2)+l2*cos(q2+q3));
y = sin(q1)*(l2*cos(q2)+l2*cos(q2+q3));
z = l1+l2*sin(q2)+l3*sin(q2+q3);
%--------------------------------------------------------------------------
% xay dung ma tran Jacobi tinh tien
% cot 1
Jt(1,1)=diff(x,q1);
Jt(2,1)=diff(y,q1);
Jt(3,1)=diff(z,q1);
% cot 2
Jt(1,2)=diff(x,q2);
Jt(2,2)=diff(y,q2);
Jt(3,2)=diff(z,q2);
% cot 3
Jt(1,3)=diff(x,q3);
Jt(2,3)=diff(y,q3);
Jt(3,3)=diff(z,q3);
%--------------------------------------------------------------------------
% % v = Jt*w
% syms t;
% q1 = 3*t+1;
% q2 = 2*sin(t)+pi/2;
% q3 = t-2;
% %--------------------------------------------------------------------------
% w1 = diff(q1,t);
% w(1,1)=w1;
% w2 = diff(q2,t);
% w(2,1)=w2;
% w3 = diff(q3,t);
% w(3,1)=w3;
% v=Jt*w
% %--------------------------------------------------------------------------
% % vx=l2^2*sin(q2 + l2*cos(q2 + q3))*sin(q2 + q3)*cos(q1) - 3*l2*cos(q2 + l2*cos(q2 + q3))*sin(q1) + 2*l2*sin(q2 + l2*cos(q2 + q3))*cos(q1)*cos(t)*(l2*sin(q2 + q3) - 1)
% %  vy=3*l2*cos(q2 + l2*cos(q2 + q3))*cos(q1) + l2^2*sin(q2 + l2*cos(q2 + q3))*sin(q2 + q3)*sin(q1) + 2*l2*sin(q2 + l2*cos(q2 + q3))*cos(t)*sin(q1)*(l2*sin(q2 + q3) - 1)
% %  vz=                                                                                                         l3*cos(q2 + q3) + 2*cos(t)*(l3*cos(q2 + q3) + l2*cos(q2))
% 
% %--------------------------------------------------------------------------
% t = linspace(0,10,1000);
% l1 =1;
% l2 =1;
% l3 =1;
% q1 = 3*cos(t)+1;
% q2 = 2*sin(t)+pi/2;
% q3 = t-2;
% % %--------------------------------------------------------------------------
% vx=l2^2*sin(q2 + l2*cos(q2 + q3)).*sin(q2 + q3).*cos(q1) - 3*l2*cos(q2 + l2*cos(q2 + q3)).*sin(q1) + 2*l2*sin(q2 + l2*cos(q2 + q3)).*cos(q1).*cos(t).*(l2*sin(q2 + q3) - 1)
% vy=3*l2*cos(q2 + l2*cos(q2 + q3)).*cos(q1) + l2^2*sin(q2 + l2*cos(q2 + q3)).*sin(q2 + q3).*sin(q1) + 2*l2*sin(q2 + l2*cos(q2 + q3)).*cos(t).*sin(q1).*(l2*sin(q2 + q3) - 1)
% %%
% % 
% %  PREFORMATTED
% %  TEXT
% % 
% vz=l3*cos(q2 + q3) + 2*cos(t).*(l3*cos(q2 + q3) + l2*cos(q2))
% 
% % %--------------------------------------------------------------------------
% x = vx.*t;
% y = vy.*t;
% z= vz.*t
% plot3(x,y,z)
% pretty(simplify(Jt));
% pretty(simplify(Jt^-1));
w = (Jt^-1)*v;
%--------------------------
w1 = w(1,1);
w2 = w(2,1);
w3 = w(3,1);
%-----------------------------
% w1 = simplify(collect(w1));
% disp('w1=')
% pretty(w1)
%------------------------------
% w2 = simplify(collect(w2));
% disp('w2=')
% pretty(w2)
%--------------------------------
% w3 = simplify(collect(w3));
% disp('w3=')
% pretty(w3)

%---------------------------
% KHAO SAT CHUYEN DONG CUA CAC KHOP TRONG KHOANG THOI GIAN t
%--------------------------------------------------------------------------
t = linspace(0,5,500); % Tao mang thoi gian t = 5(s) chia thanh 500 khoang bang nhau
q1t = 3*t.^3+2*t.^2+t;
q2t = 0.5*t.^3+(1/3)*t.^2+0.25*t;
q3t = 2*t.^3+3*t.^2+1;
%--------------------------------------------------------------------------
vyt = 1;
vxt = 1;
vzt = 1;
l1t = 0.5;
l2t = 0.5;
l3t = 0.5;
w1 = (vyt*cos(q1t))./(l2t*cos(q2t + q3t).*(cos(q1t).^2)) + l2t*cos(q2t + q3t).*(sin(q1t).^2) + l2t*(cos(q1t).^2).*cos(q2t) + l2t*cos(q2t).*(sin(q1t).^2) - (vxt*sin(q1t))./((l2t*cos(q2t + q3t).*(cos(q1t).^2)) + l2t*cos(q2t + q3t).*(sin(q1t).^2) + l2t*(cos(q1t).^2).*cos(q2t) + l2t*cos(q2t).*(sin(q1t).^2))
w2 = (2*l2t*vzt*cos(q2t).*sin(q3t) + 2*l2t*vzt*cos(q3t).*sin(q2t) + 2*l3t*vxt*cos(q1t).*cos(q2t).*cos(q3t) + 2*l3t*vyt*cos(q2t).*cos(q3t).*sin(q1t) - 2*l3t*vxt*cos(q1t).*sin(q2t).*sin(q3t) - 2*l3t*vyt*sin(q1t).*sin(q2t).*sin(q3t))./(l2t*(l2t*sin(q3t) + l3t*sin(q3t) + l2t*sin(2*q2t + q3t) - l3t*sin(2*q2t + q3t)))
% plot(t,q1)
% grid on;
% hold on;
% plot(t,q2)
% plot(t,q3)
plot(t,w1)
grid on
hold on
plot (t,w2)
% plot(t,w3)