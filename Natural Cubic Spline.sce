//Natural Cubic Spline Method
//Algorithm 3.4 P142
//Example 1 P143 Table 3.15

clear;
x=[0 1 2 3];
fx=[1 2.718281828 7.389056099 20.08553692];
n=4;
h=[0 0];
s=[0 0];
for i=1:n-1
h(i)=x(i+1)-x(i);
end
for i=2:n-1
s(i)=3*(fx(i+1)-fx(i))/h(i)-3*(fx(i)-fx(i-1))/h(i-1);
end
l=[1 0];
u=[0 0];
z=[0 0];
c=[0 0];
b=[0 0];
d=[0 0];
for i=2:n-1
l(i)=2*(x(i+1)-x(i-1))-h(i-1)*u(i-1);
u(i)=h(i)/l(i);
z(i)=(s(i)-h(i-1)*z(i-1))/l(i);
end
l(n)=1;
z(n)=0;
c(n)=0;
j=n-1;
for i=1:n-1
c(j)=z(j)-u(j)*c(j+1);
b(j)=(fx(j+1)-fx(j))/h(j)-h(j)*(c(j+1)+2*c(j))/3;
d(j)=(c(j+1)-c(j))/(3*h(j));
j=j-1;
end
function [y]=S1(x) 
y=fx(1)+b(1)*(x-x(1))+c(1)*(x-x(1))^2+d(1)*(x-x(1))^3; 
endfunction 
function [y]=S2(x) 
y=fx(2)+b(2)*(x-x(2))+c(2)*(x-x(2))^2+d(2)*(x-x(2))^3; 
endfunction 
function [y]=S3(x) 
y=fx(3)+b(3)*(x-x(3))+c(3)*(x-x(3))^2+d(3)*(x-x(3))^3; 
endfunction

plot(0,0);
i=x(1):0.05:x(2);
plot(i,S1(i))
i=x(2):0.05:x(3);
plot(i,S2(i))
i=x(3):0.05:x(4);
plot(i,S3(i))
i=x(1):0.05:x(4);
plot(i,%e^i,'m:')
legend('','','','S(x)','y=e^x');

