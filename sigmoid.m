function [outputArg] = sigmoid(inputArg)
%sigmoid Calculate the sigmoid value
outputArg = 1/(1 + exp(-1*inputArg));
end