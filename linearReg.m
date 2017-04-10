function w =linearReg(X,y)
phi = [ones(size(X,1),1) X];
fprintf('values of parameters w are');
w=inv(phi'*phi)*phi'*y

pridiction1 = w(1,1)+w(2,1)*3.5
pridiction2 = w(1,1)+w(2,1)*7.0