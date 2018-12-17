% ======================================================================
%                     Denavit?Hartenberg convention
% 
% Made by ElijahOzmegov@gmail.com as a part of the fifth laboratory work
% 
% It represents getting a special function which helps to get a 
% transform matrix
% ======================================================================

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
clear a_sym alpha d_sym theta
clear a d