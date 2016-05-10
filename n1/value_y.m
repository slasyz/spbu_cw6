% значение y^(n) (x)
function [y] = value_y(n, c, x)

y = 0;
for i = 1:n
    y = y + c(i) * value_w(i, x, 0);
end

end
