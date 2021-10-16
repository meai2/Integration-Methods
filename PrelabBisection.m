function y = PrelabBisection(xL,xU,Ea)
if Prelab(xL)*Prelab(xU)<0
    while Ea < abs((xU-xL)/(xU+xL))*100
        xR = (xL+xU)/2;
        if Prelab(xL)*Prelab(xR)==0
            break
        elseif Prelab(xL)*Prelab(xR)<0
            xU=xR;
        else
            xL=xR;
        end
    end
    y = xR;
else
    errordlg('Pick another initial guess.')
end
end