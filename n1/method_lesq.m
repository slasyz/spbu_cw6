% метод наименьших квадратов
function [A, F] = method_lesq(n, p, q, r, f)

A = zeros(n);
F = zeros(n, 1);

for i = 1:n
    xi = @(x) p(x) * value_w(i, x, 2) + q(x) * value_w(i, x, 1) + r(x) * value_w(i, x, 0);
    F(i) = quadv(@(x) f(x)*xi(x), -1, 1);

    for j = 1:n
        xj = @(x) p(x) * value_w(j, x, 2) + q(x) * value_w(j, x, 1) + r(x) * value_w(j, x, 0);
        A(i, j) = quadv(@(x) xj(x)*xi(x), -1, 1);
    end
end

end
