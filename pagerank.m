function [p,iter] = pagerank(G, alpha)

load uwaterloo.mat

%dimensions
[m,m] = size(G);

P = zeros(m,m);

column_sums = sum(G);
tolerance = 1 * 10^-8;

%find non-zero entries
[row,column] = find(G);
N = length(row);

for i = 1:N
    %degree of current node
    degree = column_sums(column(i));
    
    P(row(i), column(i)) = 1/degree;
end

%initialize p and determine dead_pages
p = ones(m, 1)./m;
d = zeros(m, 1);
e = ones(m, 1);
dead_pages = find(not(column_sums));
d(dead_pages) = 1;

%iteration algorithm
iter = 0;
while 1
    
    %construct new p vector
    A = e * ((d' * p)./ m);
    B = (P * p);
    lhs = alpha .* (A + B);
    rhs = (1 - alpha) .* (e ./ m);
    new_p = lhs + rhs;
    
    %determine whether new p and old p are within machine
    %epsilon of one another
    if(norm(new_p - p, Inf) < tolerance)
        p = new_p;
        break
    end
    iter = iter + 1;
    p = new_p; 
end
end
