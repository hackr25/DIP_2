clear;
clc;

X = [4,3,5,6; 4,2,7,7; 5,5,6,7];
[m, n] = size(X);

// Properly initialize A and E
A = zeros(m,1); // Column vector
E = zeros(m,m); // Square matrix for covariance

// Compute mean and E matrix
for i = 1:n
    A = A + X(:,i);
    E = E + X(:,i) * X(:,i)';
end

mx = A / n; // Mean vector
E = E / n;

C = E - mx * mx'; // Covariance matrix

// Eigen decomposition
[V,D] = spec(C);
d = diag(D);

// Sort eigenvalues in descending order
[d_sorted, idx] = gsort(d, "g");

// Arrange eigenvectors accordingly
T = V(:, idx);
T = T'; // Transpose for KL basis

// Display outputs
disp(d_sorted, 'Eigen Values are U = ');
disp(T, 'The eigen vector matrix T = ');
disp(T, 'The KL transform basis is = ');

// KL Transform
Y = zeros(m, n);
for i = 1:n
    Y(:,i) = T * X(:,i);
end
disp(Y, 'KL transformation of the input matrix Y = ');

// Reconstruct X
x = zeros(m, n);
for i = 1:n
    x(:,i) = T' * Y(:,i);
end
disp(x, 'Reconstructed matrix of the given sample matrix X = ');
