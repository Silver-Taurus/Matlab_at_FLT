% clear command is used to clear the workspace or clear var_name is used to
% clear any particular variable in the workspace. clc is used to clear the
% command window.
% ; is used to stop the script from executing in the command window.


% Assignment
%   - Use smicolons and sqaure brackets [] to create the vectors and the
%   matrices.
% Functions like ones, zeros, transpose or ' and ran or randi etc. can be
% used for performing various operations on the matrices or vectors.

vect1 = [1 2 3 4 5 6];  % this is a row vector of size 8 (or 8x1).
% whos vect1 can be used to display the info about the vect1.

% column vector
vect2 = vect1'; % ' symbol is used to make the transpose of the vector or matrix
vect3 = transpose(vect1);   % transpose function work the same as that of the '.
vect4 = [1; 2; 3; 4; 5 ;6];

% creating a 2x3 matrix
matr = [1 2 3; 4 5 6; 7 8 9;];  % the number of columns of all the rows should be same else it will give an error.
trans_matr = matr'; % it will create a 3x2 matrix from the transpose of a 2x3 matrix

% make a vector using ones function
ones_vect1 = ones(500,1);   % column ones vector
one_vect2 = ones(1,500);    % rows ones vector

% make a matrix of ones
ones_matr = ones(500);

% matrix with the random value
rand_matr = rand(2,3);  % it will initiliase the matrix with the value between 0 and 1
rand_matr_int = randi(10,2,3)   % it will intitialise with the value between 0 and 10