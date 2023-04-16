function [checkResult] = matrixCheck(matrix)

checkResult = true;
%% Проверка на положительность матрицы
[c, negative] = chol(matrix); 

if negative ~= 0
    checkResult = false;
    return
end

end