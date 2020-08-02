function [error_train, error_val] = ...
    learningCurve(X_training, y_training, X_validation, y_validation, lambda)

% Number of training examples
m_training = size(X_training, 1);
if m_training >=100
    m_training = 100;
end
error_train = zeros(m_training, 1);
error_val   = zeros(m_training, 1);

for i=1:m_training
    theta=trainLinearReg(X_training(1:i,:), y_training(1:i,:),lambda);
    [error_train(i,1),~]= linearRegCostFunction(X_training(1:i,:), y_training(1:i,:), theta , 0);
    [error_val(i,1),~]= linearRegCostFunction(X_validation, y_validation, theta, 0);   
    i
end




end
