function J = computeCost(X, Y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(Y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compuste the cost of a particular choice of theta
%     You should set J to the cost.

 J = sum(( X * theta - Y ) .^2 )/( 2 * m );
 fprintf('cost is %f\n',J);




% =========================================================================

end
