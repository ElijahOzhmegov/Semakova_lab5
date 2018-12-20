% ======================================================================
%                                 Lab 5
%                                robot 2
% 
% Made by ElijahOzmegov@gmail.com as a part of the fifth laboratory work
% 
% It represents getting transform matrix of existing robot, but 
% actually a vector of matrices
% ======================================================================
if exist('DHtransform', 'var') ~= 1
    DHtransform_script;
end
% the parametrs of the existing robot
a = 13;
b = 2.5;
c = 8;
d = 2.5;
e = 8;
f = 2.5;
 
syms th1 th2 th3 th4 th5 th6

% A01 = DHtransform(0,  0,     0,   th1);
% A12 = DHtransform(0,  pi/2,  a,   0) * DHtransform(0, 0, 0, th2);
% A23 = DHtransform(c,  0,    -b,   th3);
% A34 = DHtransform(0, -pi/2, -d,   0) * DHtransform(0, 0, e/2, th4);
% A45 = DHtransform(0,  pi/2,  e/2, 0) * DHtransform(0, 0, 0, th5);
% A56 = DHtransform(0, -pi/2,  0,   0) * DHtransform(0, 0, f, th6);

A01 = DHtransform(0,  pi/2,  a, th1);
A12 = DHtransform(c,     0, -b, th2);
A23 = DHtransform(0, -pi/2, -d, th3);
A34 = DHtransform(0,  pi/2,  e, th4);
A45 = DHtransform(0, -pi/2,  0, th5);
A56 = DHtransform(0,  0,     f, th5);


T01 = A01;
T02 = T01*A12;
T03 = T02*A23;
T04 = T03*A34;
T05 = T04*A45;
T06 = T05*A56;

vec_of_mat_2 = {T01, T02, T03, T04, T05, T06};

clear T01 T02 T03 T04 T05 T06
clear A01 A12 A23 A34 A45 A56
clear th1 th2 th3 th4 th5 th6
clear a b c d e f