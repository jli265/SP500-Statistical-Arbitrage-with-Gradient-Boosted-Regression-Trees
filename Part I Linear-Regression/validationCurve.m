function [lambda_vec, error_train, error_val] = ...
    validationCurve(X_training, y_training, X_validation, y_validation)
%VALIDATIONCURVE Generate the train and validation errors needed to
%plot a validation curve that we can use to select lambda
%   [lambda_vec, error_train, error_val] = ...
%       VALIDATIONCURVE(X_training, y_training, X_validation, y_validation) returns the train
%       and validation errors (in error_train, error_val)
%       for different values of lambda. You are given the training set (X_training, y_training) and validation set (X_validation, y_validation).
% Selected values of lambda (you should not change this)
lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10 30 100]';

error_train = zeros(length(lambda_vec), 1);
error_val = zeros(length(lambda_vec), 1);


for i=1:length(lambda_vec)
    theta=trainLinearReg(X_training, y_training,lambda_vec(i));
    [error_train(i,1),~]= linearRegCostFunction(X_training, y_training, theta , 0);
    [error_val(i,1),~]= linearRegCostFunction(X_validation, y_validation, theta, 0);        
end


end
