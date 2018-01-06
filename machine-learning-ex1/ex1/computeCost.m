function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
    m = length(y); % number of training examples

% You need to return the following variables correctly
    J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

    % To self me looking at this formula after a loooong time.
    % Try to arrive at this from the formula stated here https://docs.google.com/document/d/1Kdqi0h6aFoSKPoZmSp54RFd8xeYotTo0_1Y1HmW5bC8/edit#heading=h.2s58ztj33wgj
    % Also, about the confusion of whether to use X*theta or theta'*X, think about the way we can get two matrices to multiply
    J = sum((X * theta - y) .^ 2)/(2*m); % From the formula that was taught in class, we would tend to do theta' * X, but matrix multiplication is not possible that way.



% =========================================================================

end
