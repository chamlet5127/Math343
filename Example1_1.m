% This code appears in your book as Example 1.1
% approximates n!

e = exp(1); % This calculates e^1. You could do it inside the formula, but doing it 
            % this way stores the static value as a number rather than doing unnecessary 
            % function calls.
            
n = 1:10;  % this creates a vector whose elements are the integerts 1 to 10

%% Approximate n!
Sn = sqrt(2*pi*n).*((n/e).^n);  % This is the Stirling approximation from page 3 of your book
                                     % sqrt() calls the square root
% Find n! exactly for low n
fact_n = factorial(n);          % factorial() is a built-in function that calculates n!

%% Calculate error
% Absolute error 
abs_err=abs(Sn-fact_n);         % abs() is the absolute value function

% Relative error
rel_err=abs_err./abs(fact_n)    % You don't need the abs() for fact_n, but I put it as a matter of course to 
                                % be consistent with the formula
                                
format short g                  % This is largely for cosmetic purposes, it 
                                % has matlab choose the best display type
                                % You can experiment, but usually format
                                % short or long will be sufficient.
                                
[n; fact_n; Sn; abs_err; rel_err]' % Prints a nice table. 
                                   % The ; makes a matrix whose rows are
                                   % the calculated values, while the ' at
                                   % the end transposes it to a column view
                                   

                                     