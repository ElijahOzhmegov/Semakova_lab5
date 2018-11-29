% ======================================================================
%                                task 1
% 
% Made by ElijahOzmegov@gmail.com as a part of the fifth laboratory work
% 
% It represents getting 10 special points of existing robot
% ======================================================================

clear all; clc;

% ------------------- Denavit?Hartenberg parameters -------------------- 
syms a_sym alpha d_sym theta DHtransform(a, alpha, d, theta)

c_th = cos(theta);
s_th = sin(theta);

c_al = cos(alpha);
s_al = sin(alpha);

DHtransform(a_sym, alpha, d_sym, theta) = ...
                                  [c_th -s_th*c_al  s_th*s_al a_sym*c_th;
                                   s_th  c_th*c_al -c_th*s_al a_sym*s_th;
                                   0     s_al       c_al      d_sym;
                                   0     0          0         1];

clear c_th s_th c_al s_al
     
% -------------------- Functions for existing robot --------------------
% the parametrs of the existing robot
a = 3;
b = 5.75;
c = 7.375;
d = 4.125;
e = 1.125;
 
syms th1 th2 th3 th4 th5 g

R = [0; 0; 0; 1];

% pos = zeros(4,5); % the coordinate space under number 0 cannot move
pos = sym('pos',[4 5]);

A01 = DHtransform(0, -pi/2, a,  th1);
A12 = DHtransform(b,     0, 0,  th2-pi/2);
A23 = DHtransform(c,     0, 0,  th3+pi/2);
A34 = DHtransform(0,  pi/2, 0,  th4+pi/2);
A45 = DHtransform(0,     0, d,  th5+pi);

A02 = A01*A12;
A03 = A02*A23;
A04 = A03*A34;
A05 = A04*A45;

pos(:,1) = zeros(4,1);
pos(:,2) = A01*R;
pos(:,3) = A02*R;
pos(:,4) = A03*R;
pos(:,5) = A04*R;

pos(:,6) = A05*[ 0;   0; -e; 1];
pos(:,7) = A05*[ g/2; 0; -e; 1];
pos(:,8) = A05*[-g/2; 0; -e; 1];
pos(:,9)  = A05*[ g/2; 0; 0; 1];
pos(:,10) = A05*[-g/2; 0; 0; 1];

th = sym('th',[1 5]);

pos = symfun(pos, [th g]);

clear A01 A02 A03 A04 A05 
clear A12 A23 A34 A45
clear th1 th2 th3 th4 th5 g
clear R alpha theta 
clear DHtransform a b c d e
clear th

% pos = pos(1:3,:).'















