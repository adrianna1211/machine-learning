function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
s=size(z);
if(s(2)==1&&s(1)==1)
    g=1/(exp(-z)+1);
else
    for i=1:s(1)
        for j=1:s(2)
            g(i,j)=(exp(-z(i,j))+1)^(-1);
        end
    end
end

%g = 1.0 ./ (1.0 + exp(-z));
% =============================================================

end
