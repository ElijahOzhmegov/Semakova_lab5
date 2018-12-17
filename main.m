% ======================================================================
%                                 Lab 5
% 
% Made by ElijahOzmegov@gmail.com as a part of the fifth laboratory work
% 
%                   Abandon all hope, ye who enter here
% 
% ======================================================================

% ------------------------------- task 1 -------------------------------
th1_1 =  pi/2;
th2_1 = -pi/2;
th3_1 =  pi/2;
th4_1 =  pi/3;
th5_1 =  pi/2;

dth1_1 =  0.1;
dth2_1 =  0.3;
dth3_1 =  0.2;
dth4_1 = -0.1;
dth5_1 =  0.6;

[V, W] = robot1( th1_1,  th2_1,  th3_1,  th4_1,  th5_1,...
                dth1_1, dth2_1, dth3_1, dth4_1, dth5_1);

fprintf('Velocity:\n');           disp(V);    disp(double(V));
fprintf('Angular velocity:\n');   disp(W);    disp(double(W));

% ------------------------------- task 2 -------------------------------

