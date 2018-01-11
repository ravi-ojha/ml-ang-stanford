function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% When we access X(i, j)
% We can pass a list of indexes to it
% When we do X(:, 1), we are basically passing the entire list of indexes
% When we do X([1,2,3], 1), it will fetch the rows with indices 1, 2 and 3 and the column with index 1

% In order to find all the marks of selected candidates, we had to pass indices of all the y's where the value of y[i]==1
% Well, I came to know that `find` does exactly that
% Hence the two line answer

plot(X(find(y==1), 1), X(find(y==1), 2), 'k+')
plot(X(find(y==0), 1), X(find(y==0), 2), 'ko', 'markerfacecolor' ,'y')

% We could've done this using a for loop and some hacks but this is cleaner

% =========================================================================



hold off;

end
