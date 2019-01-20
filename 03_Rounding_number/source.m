% Rounding the pi to n significant digits
r1 = round(pi);
r2 = round(pi*10)/10;

format long;
numOfDigits = 6;
rn = round(pi*10^numOfDigits)/10^numOfDigits;

disp(['pi to ' num2str(numOfDigits) ' significant digits is ']);
disp(rn);