//Runge-Kutta(Order Four)
//Algorithm 5.2 P278
//Example 3 P279

clear;
function [y]=f(t,y)
y=y-t^2+1
endfunction
function [y]=y(t)
y=(t+1)^2-0.5*exp(t)
endfunction

a=0;
b=2;
aa=0.5;
n=10;

h=(b-a)/n;
t(1)=a;
w(1)=aa;
for i=1:n
K1=h*f(t(i),w(i));
K2=h*f(t(i)+h/2,w(i)+K1/2);
K3=h*f(t(i)+h/2,w(i)+K2/2);
K4=h*f(t(i)+h,w(i)+K3);
w(i+1)=w(i)+(K1+2*K2+2*K3+K4)/6;
t(i+1)=a+i*h;
end
for j=1:n+1
a(j,1)=t(j);
a(j,2)=y(t(j));
a(j,3)=w(j);
a(j,4)=abs(y(t(j))-w(j));
end
disp(a)
