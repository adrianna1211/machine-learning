function J= costFunction(X,y,theta)
%X contains training examples
% y is the class labels
% theta is a vector containing theta 0 and theta 1;
m=size(X,1);% row number of X .ie, number of exmaples 
prediction=X*theta; % predictions of hopothesis on all m
sqrError=(prediction-y).^2; % squared errors
J=1/(2*m)*sum(sqrError);