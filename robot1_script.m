% ======================================================================
%                             robot 1
% 
% Made by ElijahOzmegov@gmail.com as a part of the fifth laboratory work
% 
% It represents getting 6 special points of existing robot
% ======================================================================

% the parametrs of the existing robot
a = 3;
b = 5.75;
c = 7.375;
d = 4.125;
e = 1.125; % well, for luck
 
syms th1 th2 th3 th4 th5 g

R = [0; 0; 0; 1];

robPos1 = sym('pos',[4 6]);

T01 = DHtransform(0, -pi/2, a,  th1);
A12 = DHtransform(b,     0, 0,  th2-pi/2);
A23 = DHtransform(c,     0, 0,  th3+pi/2);
A34 = DHtransform(0,  pi/2, 0,  th4+pi/2);
A45 = DHtransform(0,     0, d,  th5+pi);

T02 = T01*A12;
T03 = T02*A23;
T04 = T03*A34;
T05 = T04*A45;

T01

% ---- This part wasn't understood completely, as the lecture material  
% ---- have mistakes. Well, I do this mostly on luck, because the end 
% ---- of week is the deadline. 
syms J
th = sym('th',[1 5]);

Z0 = [0; 0; 1];
Z1 = T01(1:3,3);
Z2 = T02(1:3,3);
Z3 = T03(1:3,3);
Z4 = T04(1:3,3);
Z5 = T05(1:3,3);

P0 = [0; 0; 0];
P1 = T01(1:3,4);
P2 = T02(1:3,4);
P3 = T03(1:3,4);
P4 = T04(1:3,4);
P5 = T05(1:3,4);

Jp1 = cross(Z0, P5 - P0);
Jp2 = cross(Z1, P5 - P1);
Jp3 = cross(Z2, P5 - P2);
Jp4 = cross(Z3, P5 - P3);
Jp5 = cross(Z4, P5 - P4);

Jo1 = Z0;
Jo2 = Z1;
Jo3 = Z2;
Jo4 = Z3;
Jo5 = Z4;

J = [Jp1 Jp2 Jp3 Jp4 Jp5; Jo1 Jo2 Jo3 Jo4 Jo5];
J = symfun(J, [th g]);

clear Z0 Z1 Z2 Z3 Z4 Z5
clear P0 P1 P2 P3 P4 P5
clear Jp1 Jp2 Jp3 Jp4 Jp5
clear Jo1 Jo2 Jo3 Jo4 Jo5
% ----

robPos1(:,1) = zeros(4,1);
robPos1(:,2) = T01*R;
robPos1(:,3) = T02*R;
robPos1(:,4) = T03*R;
robPos1(:,5) = T04*R;
robPos1(:,6) = T05*R;

robPos1 = symfun(robPos1, [th g]);

clear a_sym d_sym
clear T01 T02 T03 T04 T05 
clear A12 A23 A34 A45
clear th1 th2 th3 th4 th5 g
clear R alpha theta 
clear a b c d e
clear th