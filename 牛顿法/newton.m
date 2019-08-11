function newton()
xk=[2,2]';
epson=0.1;
d=-gfun(xk);
k=0;
while(norm(-d)>=epson)
    G=GGfun(xk);
    dk=G\d;
    xk=xk+dk;
    d=-gfun(xk);
    k=k+1;
end
disp(xk);
disp(fx(xk));
disp(k);
end