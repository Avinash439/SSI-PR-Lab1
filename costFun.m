function [ J ] = costFun(X,y,w)
N=size(X,1);
Sum1=0;
for m= 1:N
     Sum1 = Sum1 + (w*X(m,:)' - y(m))^2;

end
         
J= Sum1/(2*N);

end





