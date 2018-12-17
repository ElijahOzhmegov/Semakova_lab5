function [V, W] = robot1( th_1,  th_2,  th_3,  th_4,  th_5, ...
                         dth_1, dth_2, dth_3, dth_4, dth_5)
% ======================================================================
%                                 Lab 5
%                                robot 1
% 
% Made by ElijahOzmegov@gmail.com as a part of the fifth laboratory work
% 
% It represents getting Velocity V & Angular velocity W
% ======================================================================
if exist('vec_of_mat_1', 'var') ~= 1
    robot1_script;
end

J_rob1 = getJacobian(vec_of_mat_1);
J_rob1 = J_rob1(th_1, th_2, th_3, th_4, th_5);

dth_1 = [dth_1, dth_2, dth_3, dth_4, dth_5].';
vel_1 = J_rob1*dth_1;

V = vel_1(1:3).';
W = vel_1(4:end).';