% Question 5a
function q5()
    for x=0:12
        disp(x*(sqrt(x+1) - sqrt(x)) - x/(sqrt(x+1) + sqrt(x)))
    end
end

% 0
% 5.5511e-17
% -3.3307e-16
% 3.3307e-16
% 4.4409e-16
% -1.5543e-15
% 1.9984e-15
% 6.6613e-16
% -1.5543e-15
% 1.7764e-15
% -2.2204e-15
% -1.7764e-15
% 2.2204e-16