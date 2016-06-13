//Simpsons Double Integral
//Algorithm 4.4 P233
//Example 3 P235

clear;
function [y]=f(x,y)
y=exp(y/x)
endfunction
function [y]=d(x)
y=x^2
endfunction
function [y]=c(x)
y=x^3
endfunction

a=0.1;
b=0.5;
m=10;
n=10;

h=(b-a)/n;
J1=0;
J2=0;
J3=0;
for i=0:n
x0=a+i*h;
HX=(d(x0)-c(x0))/m;
K1=f(x0,c(x0))+f(x0,d(x0));
K2=0;
K3=0;
for j=1:m-1
y0=c(x0)+j*HX;
Q=f(x0,y0);
if modulo(j,2)==0
K2=K2+Q;
else
K3=K3+Q;
end
end
L=(K1+2*K2+4*K3)*HX/3;
if i==0 | i==n
J1=J1+L;
elseif modulo(i,2)==0
J2=J2+L;
else
J3=J3+L;
end
end
J=h*(J1+2*J2+4*J3)/3
