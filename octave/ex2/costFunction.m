%COSTFUNCTION Compute cost and gradient for logistic regression
function [J, grad] = costFunction(theta, X, y)
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

% calculating z to feed to the sigmoid function
z = X * theta;

% making prediction with logistic function (sigmoid function)
pred = sigmoid(z);

% cost function (maximum likelihood estimation)
J = (1/m) * sum((-y.*log(pred))-(1 - y).*log(1 - pred))

% gradient to feed to the optimzed conjugate gradient
grad = (1/m) * sum((pred - y).* X)

% =============================================================

end
