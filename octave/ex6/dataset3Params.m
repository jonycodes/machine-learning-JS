function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30 ];
sigma = [ 0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30 ];

% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))

% Uncomment the code below to find optimal C and sigma
% pred_error = []
% for i = 1:size(C, 1)
%     for j = 1:size(sigma, 1)
%         model = svmTrain(X, y, C(i), @(x1, x2) gaussianKernel(x1, x2, sigma(j)));
%         pred = svmPredict(model, Xval);
%         pred_error(end+1, :) = [mean(double(pred ~= yval)) C(i) sigma(j)];
%     endfor
% endfor

% min_vector = pred_error(:, 1);
% [min_error, min_index]= min(min_vector);
% C = pred_error(min_index, 2);
% sigma = pred_error(min_index, 3);


C = 1
sigma = 0.1



% =========================================================================

end
