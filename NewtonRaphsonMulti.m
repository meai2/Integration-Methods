function Xf=NewtonRaphsonMulti(X0,tol,ca0,cb0,cc0,cd0,K1,K2)
Xr = zeros(2,1);
while tol < sqrt(dot((functionLab6(X0,ca0,cb0,cc0,cd0,K1,K2))',functionLab6(X0,ca0,cb0,cc0,cd0,K1,K2)))
    Xr = X0-(jacobianLab6(X0,ca0,cb0,cc0,cd0,K1,K2)\functionLab6(X0,ca0,cb0,cc0,cd0,K1,K2));
    X0 = Xr;
end
Xf=Xr;
end