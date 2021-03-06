function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
% printf('theta = (%.2f, %.2f), cost = %.2f\n', theta(1), theta(2), computeCost(X, y, theta));

% predictions
h = X * theta;

% simultaneously update theta0 and theta1
nextTheta0 = theta(1) - (alpha * (1 / m) * sum(h - y));
nextTheta1 = theta(2) - (alpha * (1 / m) * sum((h - y) .* X(:, 2)));
theta = [nextTheta0; nextTheta1];


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
