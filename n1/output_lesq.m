function output_lesq(p, q, r, f, yex_m05, yex_0, yex_p05)

disp(' ______________________________________________________________________________________ ')
disp('|                                                                                      |')
disp('|                         Метод наименьших квадратов                                   |')
disp('|______________________________________________________________________________________|')
disp('|              |                                   |                                   |')
disp('|              |             u^(n) (x)             |         u^*(x) - u^(n) (x)        |')
disp('|______________|___________________________________|___________________________________|')
disp('|   |          |           |           |           |           |           |           |')
disp('| n |   mu(A)  |  x = -0.5 |   x = 0   |  x = 0.5  |  x = -0.5 |   x = 0   |  x = 0.5  |')
disp('|___|__________|___________|___________|___________|___________|___________|___________|')
disp('|______________________________________________________________________________________|')
for n = 3:7
    [A, F] = method_lesq(n, p, q, r, f);
    c = A \ F;
    y_m05 = value_y(n, c, -0.5);
    y_0 = value_y(n, c, 0);
    y_p05 = value_y(n, c, 0.5);

    disp('|   |          |           |           |           |           |           |           |')
    disp(sprintf('| %1d | % 8g | % 8f | % 8f | % 8f | % 8f | % 8f | % 8f |', n, cond(A), y_m05, y_0, y_p05, yex_m05-y_m05, yex_0-y_0, yex_p05-y_p05))
    disp('|___|__________|___________|___________|___________|___________|___________|___________|')
end

end
