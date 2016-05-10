% метод наименьших квадратов
function [t] = method_col_chroots(n)

t = zeros(n);

for i = 1:n
    t(i) = cos((2*i - 1)/(2*n)*pi);
end

end
