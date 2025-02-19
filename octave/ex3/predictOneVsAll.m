function p = predictOneVsAll(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier. The labels 
%are in the range 1..K, where K = size(all_theta, 1). 
%  p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions
%  for each example in the matrix X. Note that X contains the examples in
%  rows. all_theta is a matrix where the i-th row is a trained logistic
%  regression theta vector for the i-th class. You should set p to a vector
%  of values from 1..K (e.g., p = [1; 3; 1; 2] predicts classes 1, 3, 1, 2
%  for 4 examples) 

m = size(X, 1);
num_labels = size(all_theta, 1);
% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);
size(p);
% Add ones to the X data matrix
X = [ones(m, 1) X];

% Instructions: 
%
%        This code can be done all vectorized using the max function.
%       In particular, the max function can also return the index of the 
%       max element, for more information see 'help max'. If your examples 
%       are in rows, then, you can use max(A, [], 2) to obtain the max 
%       for each row.
% 
size(all_theta');

% this one took me some time to figure how vectorize 

% X is 5000 x 401 matrix
% all_theta is  10 x 401 matrix
% in order to do matrix multiplication we need the same size of columns from x
% and the same size of rows from all_theta 
% therefore we transpose all_theta to be 401 x 10 matrix
% after the mulicatiplication z becomes a 5000 x 10 matrix
% since 5000 x 401 * 401 x 10 = 5000 x 10 matrix
z = X * all_theta';

% the sigmoid function returns the same size 5000 x 10 but with values from 0 to 1 in each column
g = sigmoid(z);

% for each row we now pick the index of value closest to 1 
% this gives us a 5000 x 1 vector p
% v is a 5000 x 1 vector with the highest values, but we don't need it
[v p] = max(g, [], 2);
end
