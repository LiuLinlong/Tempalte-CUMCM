function g=GGfun(xx)
syms x y;
Gx=xx(1,1);
Gy=xx(2,1);
g=subs(jacobian(gradient(100*(x^2-y)^2+(x-1)^2)),[x,y],[Gx,Gy]);
end