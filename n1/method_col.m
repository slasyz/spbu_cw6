% метод коллокации
function [A, F] = method_col(n, p, q, r, f)

A = zeros(n);
F = zeros(n, 1);

t = method_col_chroots(n);

for i = 1:n
    F(i) = f(t(i));

    for j = 1:n
        ti = t(i);
        A(i, j) = p(ti) * value_w(j, ti, 2) + q(ti) * value_w(j, ti, 1) + r(ti) * value_w(j, ti, 0);
    end
end

end
