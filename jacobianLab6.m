function J=jacobianLab6(X,ca0,cb0,cc0,cd0,K1,K2)

%Get concentrations
ca=ca0-2*X(1)-X(2);
cb=cb0-X(1);
cc=cc0+X(1)+X(2);
cd=cd0-X(2);

%Jacobian matrix
J=[-K1*(4*ca*cb+ca^2)-1, -2*K1*ca*cb-1; -2*K2*cd-1, -K2*(cd+ca)-1];

end