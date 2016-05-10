clear ; close all; clc;

format long;

p = @(x) -(6+x)/(7+3*x);
q = @(x) -(1 - x/2);
r = @(x) 1 + 1/2 * cos(x);
f = @(x) 1 - x/3;

alpha1 = -2; alpha2 = -1;
beta1 = 0; beta2 = -1;

yex_m05 = 0.54505;
yex_0 = 0.58142;
yex_p05 = 0.57330;
%yex_m05 = 0.73308;
%yex_0 = 1.63000;
%yex_p05 = 2.68137;

output_lesq(p, q, r, f, yex_m05, yex_0, yex_p05);
output_col(p, q, r, f, yex_m05, yex_0, yex_p05);
