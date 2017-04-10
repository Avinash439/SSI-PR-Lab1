function [Xn,mu,sigma] = FeatureNormalize(X)
for i=1:size(X,1)
    for j=1:size(X,2)
mu(j)=mean(X(:,j));
sigma(j)=std(X(:,j));



Xn(i,j)=(X(i,j)-mu(j))/sigma(j);


end

end
