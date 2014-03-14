function q4()
    % Part A
    disp(sprintf('Part A Approximations\n'))
    %disp(sprintf('Approximation on interval 0 -> 0.1:  %f', approx_part_a(0.1,0)));
    disp('Approximation on interval 0 -> 0.1: '); disp(approx_part_a(0.1,0));
    %ans = 0.1052
    %disp(sprintf('Approximation on interval 0 -> 1:  %f', approx_part_a(1,0)));
    disp('Approximation on interval 0 -> 1: '); disp(approx_part_a(1,0));
    %ans = 1.6667
    %disp(sprintf('Approximation on interval 0 -> 10:  %f', approx_part_a(10,0)));
    disp('Approximation on interval 0 -> 10: '); disp(approx_part_a(10,0));
    %ans = 226.6667
    % Part B
    disp(sprintf('\nPart B Approximations\n'))
    %disp(sprintf('Approximation on interval 0 -> 0.1:  %f', approx_part_b(0.1,0)));
    disp('Approximation on interval 0 -> 0.1: '); disp(approx_part_b(0.1,0));
    %ans = 0.1052
    %disp(sprintf('Approximation on interval 0 -> 1:  %f', approx_part_b(1,0)));
    disp('Approximation on interval 0 -> 1: '); disp(approx_part_b(1,0));
    %ans = 1.7167
    %disp(sprintf('Approximation on interval 0 -> 10:  %f', approx_part_b(10,0)));
    disp('Approximation on interval 0 -> 10: '); disp(approx_part_b(10,0));
    %ans = 1.4767e+03
end

% Part A approximation function
function a = approx_part_a(x,y)
    a = (x + ((x^2)/2) + ((x^3)/6)) - (y+((y^2)/2) + ((y^3)/6));
    return
end
% Part B approximation function
function b = approx_part_b(x,y)
    b = (x + ((x^2)/2) + ((x^3)/6) + ((x^4)/24) + ((x^5)/120)) - (y + ((y^2)/2) + ((y^3)/6) + ((y^4)/24) + ((y^5)/120));
    return
end
