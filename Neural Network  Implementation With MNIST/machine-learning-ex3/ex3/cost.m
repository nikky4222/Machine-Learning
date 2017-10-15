function [ J] = cost(theta,X,y,lambda )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
m = length(y); % number of training examples

% You need to return the following variables correctly 
grad = zeros(size(theta));
n=size(theta);
templog(:,1) = log(sigmoid(X*theta));
templog(:,2) = log(1-(sigmoid(X*theta)));
tempy(:,1) = y;
tempy(:,2) = 1-y;
temp = templog.*tempy;
th1=theta(2:end,1);
th = th1.*th1;
f=(lambda/(2*m))*sum(th);
J = (1/m)*(-sum(temp(:,1))-sum(temp(:,2)))+f;
fprintf('cost is %f',J);
end

