function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
n=size(theta);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

templog(:,1) = log(sigmoid(X*theta));
templog(:,2) = log(1-(sigmoid(X*theta)));
tempy(:,1) = y;
tempy(:,2) = 1-y;
temp = templog.*tempy;
th1=theta(2:end,1);
th = th1.*th1;
f=(lambda/(2*m))*sum(th);
J = (1/m)*(-sum(temp(:,1))-sum(temp(:,2)))+f;
hx = sigmoid(X * theta);
tempVal=theta;
tempVal(1,1) = (1/m)*(sum((hx-y).*X(:,1)));
for i=2:n
    tempVal(i,1) = ((1/m)*(sum((hx-y).*X(:,i))))+(lambda/m)*(theta(i));

end

grad=tempVal;

% =============================================================

end
