//Neville's Iterated Interpolation Method
//Algorithm 3.1 P114
//Example 5 P112
//x=1.5

clear;
xk=1.5;
x=[1.0 1.3 1.6 1.9 2.2];
Q=[];
Q(1,1)=0.7651977;
Q(2,1)=0.6200860;
Q(3,1)=0.4554022;
Q(4,1)=0.2818186;
Q(5,1)=0.1103623;
n=5;
for i=2:n
  for j=2:i
  Q(i,j)=((xk-x(i-j+1))*Q(i,j-1)-(xk-x(i))*Q(i-1,j-1))/(x(i)-x(i-j+1));
  end
end
Q


