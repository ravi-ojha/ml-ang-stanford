function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% We know that h(x) is sigmoid(x) now

% X * theta will return 100 x 1 matrix
TX = X * theta;

% About the y' thing, we can again use that logic of how to multiply two matrices, if it is even possible.
% We saw y * log(sigmoid(TX)) is not possible because for matrix multiplication we need M x N and A x B, where N == A
% Here y is 100 x 1 and log(sigmoid(TX)) is 100 x 1, so we took y'
% It's a trick to know when to use transpose, we should consult the equation we got in the docs
J = (-1/m)*((y' * log(sigmoid(TX))) + ((1 .- y)' * log(1 .- sigmoid(TX))));


% (TX-y) is 100 x 1
% grad has to be 3 x 1
% X is 100 x 3
% So it should be (3 x 100) * (100 x 1)
grad = (1/m)*(X' * (sigmoid(TX) - y));



% =============================================================

end
