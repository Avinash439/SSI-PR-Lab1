%%ERROR  FUNCTION

function j_new = cost(X,y,w )
N=size(X,1);
errors= []
for m= 1: N 

     errors = [errors; ((w*X(m,:)'-y(m,:))*X(m,:))];

end
    errors=sum(errors)
    j_new=errors/(N)


end

