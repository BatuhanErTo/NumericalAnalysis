function [result] = coefficient(c)
    result = 9.8*68.1*(1-exp(-10*c/68.11))/c-40;
end
