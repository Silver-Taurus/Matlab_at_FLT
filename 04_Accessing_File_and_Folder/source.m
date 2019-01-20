% Get info about all the files/folders
everything = dir;   % It is the vector of type struct
% check the everything(i), in this case i can be 1 to 3, and contains the
% field called isdir which stores value 1 if the struct is a directory and
% 0 if it is a file.

% Names of all the folders
directories = [everything.isdir];
names_of_folders = {everything(directories).name};  % {} is used for cells, [] for vectors and matrices, () for index calling

% use selective query to extract filename with "variab"
something = dir('*variab');

% filename lengths
filename_len = cellfun(@length,names_of_folders);
