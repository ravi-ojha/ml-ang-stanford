function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % I realize that (X*theta - y) is a real number
    % and sum((X*theta - y) .* X) will result into a matrix of size 1 x 2
    % However, our theta is 2 x 1.
    % You cannot subtract 2 x 1 matrix to 1 x 2 matrix.
    % So I take theta transpose and do the subtraction
    temp = theta' - (alpha * sum((X*theta - y) .* X))/m;

    % Since temp is 1 x 2 matrix while we expect theta to be 1 x 2
    % I take transpose again and store it back in theta
    theta = temp' ;



    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end

end
