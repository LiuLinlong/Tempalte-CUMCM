function g=gfun(xx)
syms x y;
gx=xx(1,1);
gy=xx(2,1);
g=subs(gradient(100*(x^2-y)^2+(x-1)^2),[x,y],[gx,gy]);
end