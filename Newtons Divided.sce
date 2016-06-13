//Newtons Divided Method
//Algorithm 3.2 P121
//Example 1 P121
//x=1.5

clear;
xk=1.5;
x=[1.0 1.3 1.6 1.9 2.2];
F=[];
F(1,1)=0.7651977;
F(2,1)=0.6200860;
F(3,1)=0.4554022;
F(4,1)=0.2818186;
F(5,1)=0.1103623;
n=5;
for i=2:n
  for j=2:i
  F(i,j)=(F(i,j-1)-F(i-1,j-1))/(x(i)-x(i-j+1));
  
  end
end

s=0;
for i=1:n
  k=1;
  for j=1:i-1
  k=k*(xk-x(j));
  end
  s=s+k*F(i,i);
end
F
disp('P(x)=')
disp(s)


