function [] = gradient_function(a, n)
% gradient_function is for weekly assigements 9
% this function will calculate uses the gradient descent the approc min of
% the function f(x) = x^2 -1.
% df/dx = 2x
% formula -> for i = 1 to n {tmp[i] := Q[i] - alpha*(df/dx J(Q))}
% a = the step size n = the numbber of parameters need to solve for s = the
% start value of x
syms x y real
y(x) = x^2-1 ;
delta(x) = diff(y(x)) ;
step = a ;
first_x = 10 ;
current = first_x ;
nxt = current ;
q = [] ;
counter = 0 ;
for i = 1:n
    delta_x = double(delta(current))*step ;
    if(abs(delta_x) < 0.0001) % if we're negation
        break
    end
    nxt = current - delta_x ;
    current = nxt ;
    counter = counter + 1;
    q = [q, current] ;
end
nxt
figure(1)
ezplot(y(x))
hold on 
plot([-100, 100],[double(y(nxt)), double(y(nxt))],'-r')
double(y(nxt))
figure(2)
plot(q)
end

