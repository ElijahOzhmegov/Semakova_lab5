function J = getJacobian(vec_of_mat)
% ======================================================================
%                                 Lab 5
% 
% Made by ElijahOzmegov@gmail.com as a part of the fifth laboratory work
% 
% It represents getting Jacobian matrix of existing robot
% ======================================================================
n = length(vec_of_mat);

Z = [0; 0; 1];
P = [0; 0; 0];

for i=1:n
    T = vec_of_mat{i};
    Z = [Z T(1:3,3)];
    P = [P T(1:3,4)];
end

Jp = [];
Jo = Z(:,1:end-1);

for i=1:n
    Jp = [Jp cross(Z(:,i), P(:,end) - P(:,i))];
end

J = [Jp; Jo];

th = sym('th',[1 n]);

J = symfun(J, th);