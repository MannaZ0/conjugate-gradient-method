%% start_data
A = [1 3 0
    3 2 6 
    0 6 5];
b = [3
    4
    5];

accuracy = 0.01;
return;
%% 1 iter
k=1;
x =[];
r =[];
z =[];

x{k} =rand(1,3); % Приближение начальное
r{k} = b - A *x{k};
z{k} = r{k};

%% k iter
while norm(r{k})/norm(b) > accuracy
    k = k+1;
    alpha = (r{k-1}' *r{k-1} )/((A*z{k-1})'*z{k-1});
    x{k} = x{k-1} + alpha * z{k-1};
    r{k} = r{k-1}-alpha*A*z{k-1};
    beta =  (r{k}' *r{k} )/(r{k-1}' *r{k-1});
    z{k} = r{k}+beta*z{k-1};
end