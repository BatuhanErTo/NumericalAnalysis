% same solutions with different approaches
syms c

f(c) = 9.8*68.1*(1-exp(-10*c/68.11))/c-40;
real_root = double(solve(f(c)))

g = inline("9.8*68.1*(1-exp(-10*c/68.11))/c-40");
real_root2 = fzero(g,[12,16])
real_root3 = fzero("coefficient",[12,16])
