% Hilbert-Matrix
% Mij = 1 / (i + j - 1)

% Checkboard-Matrix (bonus)
% Mij = -1^(i+j-1)

% Upper-triangular matrix (bonus)
% Mij = 1.03^((i*j)^0.5)



% dimensions
m = 5;
n = 100;
% initialise the variables
hilmat = zeros(m);
checkmat = zeros(m);
uppertrimat = zeros(n);
othermatr = zeros(n);
% now for the loops
for i = 1:m
    for j = 1:m
        % denominator
        dem = i+j-1;
        
        % for hilbert matrix
        % find the element by inverting the value
        hilmat(i,j) = 1/dem;
        
        % for checkboard matrix (bonus)
        checkmat(i,j) = (-1)^dem;   % -1 should be in parenthesis as power operator has higher precedence.
    end
end
% above is the for loop syntax

% Uppper-triangular matrix and full matrix
for i = 1:n
    for j = 1:n
        % for upper triangular matrix
        if i<j
            uppertrimat(i,j) = 1.03^sqrt(i*j);
        else
            othermatr(i,j) = 1.03^n - 1.03^sqrt(i*j);
        end
    end
end
fullmatr = uppertrimat + othermatr


% Let's visualise how the matrices looks like
figure(1), clf
subplot(121)
imagesc(hilmat)
axis square, title('Hilbert Matrix')
set(gca,'xtick',[],'ytick',[])

subplot(122)
imagesc(checkmat)
axis square, title('Crossboard Matrix')
set(gca,'xtick',[],'ytick',[])

figure(2), clf
subplot(221)
imagesc(uppertrimat)
axis square, title('Upper triangular matrix')
set(gca,'xtick',[],'ytick',[],'clim',[0 1.03^n])

subplot(222)
imagesc(fullmatr)
axis square, title('Full matrix')
set(gca,'xtick',[],'ytick',[],'clim',[0 1.03^n])