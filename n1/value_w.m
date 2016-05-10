% i
% x
% num -- номер производной (2 для w'', 1 для w', 0 для w)
function [y] = value_w(i, x, num)

switch i
    case 1
        switch num
        case 0
            y = x^3 + x^2 - 5*x - 7;
        case 1
            y = 3*x^2 + 2*x - 5;
        case 2
            y = 6*x + 2;
        end
    case 2
        switch num
        case 0
            y = x^3 - x^2 - x + 3;
        case 1
            y = 3*x^2 + 2*x - 1;
        case 2
            y = 6*x + 2;
        end
    case 3
        switch num
        case 0
            y = (1-x^2)^2;
        case 1
            y = 4*x*(x^2-1);
        case 2
            y = 12*x^2 - 4;
        end
    case 4
        switch num
        case 0
            y = (1-x^2)^2 * 3 * x;
        case 1
            y = 3 * (5*x^4 - 6*x^2 + 1);
        case 2
            y = 12*x*(5*x^2 - 3);
        end
    case 5
        switch num
        case 0
            y = (1-x^2)^2 * (1/8 * (x-1)^2 * 7 * 8 + 1/2 * 4 * (x-1) * 7 + 1/2 * 3 * 4);
        case 1
            y = 6*x*(7*x^4 - 10*x^2 + 3);
        case 2
            y = 6 * (35*x^4 - 30*x^2 + 3);
        end
    case 6
        switch num
        case 0
            y = (1-x^2)^2 * (1/48 * (x-1)^3 * 8 * 9 * 10 + 1/8 * 5 * (x-1)^2 * 8 * 9 + 1/4 * 4 * 5 * (x-1) * 8 + 1/6 * 4 * 4 * 5);
        case 1
            y = 5/3 * (63*x^6 - 105*x^4 + 8*x^3 + 45*x^2 - 8*x - 3);
        case 2
            y = 630*x^5 - 700*x^3 + 40*x^2 + 150*x - 40/3;
        end
    case 7
        switch num
        case 0
            y = (1-x^2)^2 * (1/384 * (x-1)^4 * 9 * 10 * 11 * 12 + 1/48 * 6 * (x-1)^3 * 9 * 10 * 11 + 1/16 * 5 * 6 * (x-1)^2 * 9 * 10 + 1/12 * 4 * 5 * 6 * (x-1) * 9 + 1/24 * 3 * 4 * 5 * 6);
        case 1
            y = 15/2 * x * (33*x^6 - 63*x^4 + 35*x^2 - 5);
        case 2
            y = 15/2 * (231 * x^6 - 315*x^4 + 105*x^2 - 5);
        end
end

end
