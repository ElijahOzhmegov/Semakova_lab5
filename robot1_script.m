% ======================================================================
%                                 Lab 5
%                                robot 1
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
a = 3;
b = 5.75;
c = 7.375;
d = 4.125;
 
syms th1 th2 th3 th4 th5

A01 = DHtransform(0, -pi/2, a,  th1);
A12 = DHtransform(b,     0, 0,  th2-pi/2);
A23 = DHtransform(c,     0, 0,  th3+pi/2);
A34 = DHtransform(0,  pi/2, 0,  th4+pi/2);
A45 = DHtransform(0,     0, d,  th5+pi);

T01 = A01;
T02 = T01*A12;
T03 = T02*A23;
T04 = T03*A34;
T05 = T04*A45;

vec_of_mat_1 = {T01, T02, T03, T04, T05};

clear T01 T02 T03 T04 T05 
clear A01 A12 A23 A34 A45
clear th1 th2 th3 th4 th5
clear a b c d