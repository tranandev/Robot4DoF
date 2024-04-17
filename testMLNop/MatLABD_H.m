% --------------------------------------------------------------------------
% chuong trinh lap phuong trinh dong hoc tay may theo quy tac DH
% --------------------------------------------------------------------------
% cac thao tac voi man hinh
clc; % Xoa sach man hinh
clear all; % Xoa gia tri cua cac bien truoc do
close all; % Dong tat ca cac chuong trinh dang chay truoc do
%--------------------------------------------------------------------------
% khai bao bieu tuong cua cac gia tri bien khop va kich thuoc tay may
syms d_i teta_i a_i anpha_i; % Ten cac tham so dong hoc cua bang DH
syms q1 q2 q2 q3 q4 q6 q7 q8; % cac bien khop
syms l1 l2 l3 l4 l5 l6 l7 l8 a1 a2 a3 b1 b2 b3; % kich thuoc cua cac khau
%--------------------------------------------------------------------------
%----hien thi ma tran DH tong quat ra man hinh
H_i_j=[cos(teta_i) -sin(teta_i)*cos(anpha_i) sin(teta_i)*sin(anpha_i) a_i*cos(teta_i);
      sin(teta_i) cos(teta_i)*cos(anpha_i) -cos(teta_i)*sin(anpha_i) a_i*sin(teta_i);
      0 sin(anpha_i) cos(anpha_i) d_i;
      0 0 0 1];
disp('----------------------------------------------------------------------------------------------')
disp('---------------------------------MA TRAN D-H TONG QUAT----------------------------------------');
disp('----------------------------------------------------------------------------------------------')
pretty(simplify(collect(H_i_j))) % cac lenh lam dep, viet gon lai, nhom cac gia tri trong ma tran
disp('----------------------------------------------------------------------------------------------')
%--------------------------------------------------------------------------
% nhap bang thong so dong hoc DH
disp('moi cac ban nhap cac thong so cua bang dong hoc DH theo dong')
disp('neu dong nao thua thi nhap tat ca cac gia tri bang 0')
%--------------------------------------------------------------------------
%-------nhap dong thu nhat cua bang DH-----------------------------------
disp('nhap dong thu nhat cua bang dong hoc DH')
d1=input('d1=')
teta1=input('teta1=')
a1=input('a1=')
anpha1=input('anpha1=')
H_1_0=subs(H_i_j,[d_i,teta_i, a_i,anpha_i],[d1,teta1,a1,anpha1]); % thay cac gia tri vua nhap vao cong thuc DH
% subs(ten ma tran goc,[bien ma tran goc],[gia tri tuong ung ma tran du lieu])
pretty(simplify(collect(H_1_0))) % cac lenh lam dep, viet gon lai, nhom cac gia tri trong ma tran
%--------------------------------------------------------------------------
%-------nhap dong thu hai cua bang DH-----------------------------------
disp('nhap dong thu hai cua bang dong hoc DH')
d2=input('d2=')
teta2=input('teta2=')
a2=input('a2=')
anpha2=input('anpha2=')
H_2_1=subs(H_i_j,[d_i,teta_i, a_i,anpha_i],[d2,teta2,a2,anpha2]); % thay cac gia tri vua nhap vao cong thuc DH
% subs(ten ma tran goc,[bien ma tran goc],[gia tri tuong ung ma tran du lieu])
pretty(simplify(collect(H_2_1))) % cac lenh lam dep, viet gon lai, nhom cac gia tri trong ma tran
%--------------------------------------------------------------------------
disp('nhap dong thu ba cua bang dong hoc DH')
d3=input('d3=')
teta3=input('teta3=')
a3=input('a3=')
anpha3=input('anpha3=')
H_3_2=subs(H_i_j,[d_i,teta_i, a_i,anpha_i],[d3,teta3,a3,anpha3]); % thay cac gia tri vua nhap vao cong thuc DH
% subs(ten ma tran goc,[bien ma tran goc],[gia tri tuong ung ma tran du lieu])
pretty(simplify(collect(H_3_2))) % cac lenh lam dep, viet gon lai, nhom cac gia tri trong ma tran
%--------------------------------------------------------------------------
disp('nhap dong thu tu cua bang dong hoc DH')
d4=input('d4=')
teta4=input('teta4=')
a4=input('a4=')
anpha4=input('anpha4=')
H_4_3=subs(H_i_j,[d_i,teta_i, a_i,anpha_i],[d4,teta4,a4,anpha4]); % thay cac gia tri vua nhap vao cong thuc DH
% subs(ten ma tran goc,[bien ma tran goc],[gia tri tuong ung ma tran du lieu])
pretty(simplify(collect(H_4_3))) % cac lenh lam dep, viet gon lai, nhom cac gia tri trong ma tran
%--------------------------------------------------------------------------
disp('nhap dong thu nam cua bang dong hoc DH')
d5=input('d5=')
teta5=input('teta5=')
a5=input('a5=')
anpha5=input('anpha5=')
H_5_4=subs(H_i_j,[d_i,teta_i, a_i,anpha_i],[d5,teta5,a5,anpha5]); % thay cac gia tri vua nhap vao cong thuc DH
% subs(ten ma tran goc,[bien ma tran goc],[gia tri tuong ung ma tran du lieu])
pretty(simplify(collect(H_5_4))) % cac lenh lam dep, viet gon lai, nhom cac gia tri trong ma tran
%--------------------------------------------------------------------------
disp('nhap dong thu sau cua bang dong hoc DH')
d6=input('d6=')
teta6=input('teta6=')
a6=input('a6=')
anpha6=input('anpha6=')
H_6_5=subs(H_i_j,[d_i,teta_i, a_i,anpha_i],[d6,teta6,a6,anpha6]); % thay cac gia tri vua nhap vao cong thuc DH
% subs(ten ma tran goc,[bien ma tran goc],[gia tri tuong ung ma tran du lieu])
pretty(simplify(collect(H_6_5))) % cac lenh lam dep, viet gon lai, nhom cac gia tri trong ma tran
%--------------------------------------------------------------------------
%-------tinh ma tran D - phuong trinh dong hoc thuan---------------------
disp('ma tran D - phuong trinh dong hoc thuan')
D = H_1_0*H_2_1*H_3_2*H_4_3*H_5_4*H_6_5;
% pretty(simplify(collect(D)))
pretty(D)
n = 800;
A = 1.995653;
B = 1.27689;
C = 8;
r=linspace(0,1,n);
theta=linspace(-2,20*pi,n);
[R,THETA]=ndgrid(r,theta);
% define the number of petals we want per cycle. Roses have 3 and a bit.
petalNum=3.6;
x = 1 - (1/2)*((5/4)*(1 - mod(petalNum*THETA, 2*pi)/pi).^2 - 1/4).^2;
phi = (pi/2)*exp(-THETA/(C*pi));
y = A*(R.^2).*(B*R - 1).^2.*sin(phi);
R2 = x.*(R.*sin(phi) + y.*cos(phi));
X=R2.*sin(THETA);
Y=R2.*cos(THETA);
Z=x.*(R.*cos(phi)-y.*sin(phi));
% % define a red map for our rose colouring
red_map=linspace(1,0.25,10)';
red_map(:,2)=0;
red_map(:,3)=0;
clf
surf(X,Y,Z,'LineStyle','none')
view([-40.50 42.00])
colormap(red_map)
%ve thu bien thien cua diem tac dong cuoi khi cac khop chuyen dong
clc;
clear all;
close all;
%------------------------------------------------------------
l1 =1;
l2 =2; % (m) kich thuoc cua khau 1 va khau 2
q3 = 0.5;
n= 100;
 for i = 1 : n
q1 = linspace(-pi/2, pi/2, n);
q2 = linspace(pi/9, -pi/9, n);
q3 = linspace(0, q3, n);
x = l1*cos(q1) + l2*cos(q1).*cos(q2) - l2*sin(q1).*sin(q2);
y = l1*sin(q1) + l2*cos(q1).*sin(q2) + l2.*cos(q2).*sin(q1);
z = -q3;
plot3(x,y,z,'-o')
grid on
hold off
 end
