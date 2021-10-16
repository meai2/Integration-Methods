function y = Eulers(y,dt,t0,tf)
   n = (tf-t0)/dt;
    i = 0;
    ti = t0;
    yi = y;
     
    while i <= n
        dy = odefun(ti,yi);
        yi = yi + dt*dy;
        ti = ti + dt;
        i = i +1;
    end
    y = yi;
end