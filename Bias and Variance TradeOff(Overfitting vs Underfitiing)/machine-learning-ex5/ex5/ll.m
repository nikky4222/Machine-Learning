
load('ex5data1.mat')
m = length(y);
X=[ones(m, 1) X];
h=(X*theta);
J=(1/(2*m))*sum((h-y).^2);
lambda=1;
reg=lambda/(2*m);
doub=(theta(2,:).^2);
penalty=reg*(theta(2,:).^2);
k=J+penalty;
c=h-y;
b=c.*X(:,1);
b1=sum(b,1);
b2=c.*X(:,2);
b3=sum(b2,1);
grad1=b1/m;
grad2=b3/m+(lambda/m)*sum(theta(2:end,:));
grad=[grad1;grad2];