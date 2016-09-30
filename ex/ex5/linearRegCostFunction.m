function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


% You need to return the following variables correctly 
J = 0;
prediction=X*theta; % predictions of hopothesis on all m
Error=prediction-y; % squared errors
error=sum(Error.^2);
J=1.0/(2*m)*error+1.0/(2*m)*lambda*sum(theta(2:end).^2);%Don't regularize the ¦È0 term.

n=size(theta);

grad(1) = 1.0/m*Error'*X(:,1);
for i=2:n
    grad(i) =1.0/m*Error'*X(:,i)+lambda/m*theta(i);
end











% =========================================================================

grad = grad(:);

end
