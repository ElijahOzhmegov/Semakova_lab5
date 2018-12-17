function [V, W] = robot2( th_1,  th_2,  th_3,  th_4,  th_5,  th_6, ...
                         dth_1, dth_2, dth_3, dth_4, dth_5, dth_6)
% ======================================================================
%                                 Lab 5
%                                robot 2
% 
% Made by ElijahOzmegov@gmail.com as a part of the fifth laboratory work
% 
% It represents getting Velocity V & Angular velocity W
% ======================================================================
if exist('vec_of_mat_2', 'var') ~= 1
    robot2_script;
end

J_rob = getJacobian(vec_of_mat_2);
J_rob = J_rob(th_1, th_2, th_3, th_4, th_5, th_6);

dth_1 = [dth_1, dth_2, dth_3, dth_4, dth_5, dth_6].';
vel_1 = J_rob*dth_1;

V = vel_1(1:3).';
W = vel_1(4:end).';