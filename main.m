% ======================================================================
%                                 Lab 5
% 
% Made by ElijahOzmegov@gmail.com as a part of the fifth laboratory work
% 
%                   Abandon all hope, ye who enter here
% 
% ======================================================================

% ------------------------------- task 1 -------------------------------
fprintf('----task 1----\n')
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
fprintf('\n----task 2----\n')
th1_2 =  pi/2;
th2_2 = -pi/2;
th3_2 =  pi/4;
th4_2 = -pi/6;
th5_2 =  pi/8;
th6_2 = -pi/3;

dth1_2 =  0.1;
dth2_2 = -0.2;
dth3_2 =  0.3;
dth4_2 =  0.1;
dth5_2 =  0.4;
dth6_2 = -0.6;

[V, W] = robot2( th1_2,  th2_2,  th3_2,  th4_2,  th5_2,  th6_2,...
                dth1_2, dth2_2, dth3_2, dth4_2, dth5_2, dth6_2);

fprintf('Velocity:\n');           disp(V);    disp(double(V));
fprintf('Angular velocity:\n');   disp(W);    disp(double(W));
