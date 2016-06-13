//Hermite Interpolation Method
//Algorithm 3.3 P135
//Example 1 P132
//x=1.5

clear;
xk=1.5;
x=[1.3 1.6 1.9];
f=[0.6200860 0.4554022 0.2818186];
ff=[-0.5220232 -0.5698959 -0.5811571];
Q=[];
z=[0 0];
n=3;
for i=1:n
 z(2*i-1)=x(i);
 z(2*i)=x(i);
 Q(2*i-1,1)=f(i);
 Q(2*i,1)=f(i);
 Q(2*i,2)=ff(i);
 if i>1
 Q(2*i-1,2)=(Q(2*i-1,1)-Q(2*i-2,1))/(z(2*i-1)-z(2*i-2));
 else
 end
end
for i=3:2*n
  for j=3:i
  Q(i,j)=(Q(i,j-1)-Q(i-1,j-1))/(z(i)-z(i-j+1));
  end
end
s=0;

for i=1:2*n
 a=modulo(i,2);
 u=(i-a)/2;
 k=1;
 for j=1:u-1
 k=k*(xk-x(j))*(xk-x(j));
 end
 if i>1
 k=k*(xk-x(u))*(xk-x(u))^(a); 
 else
 end
 s=s+Q(i,i)*k;
end
Q
disp('H(x)=')
disp(s)


