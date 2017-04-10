function [ w ] = GradientDescent( X,y,w,alpha,Niter )


% costf=cost(X,y,w);
j=[];

for i=1:Niter
   
    

w=w-alpha*cost(X,y,w);
 j=[j costfun(X,y,w)];       

end
xx = 1:Niter
plot(xx,j);

end