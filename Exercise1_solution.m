%{ 
Solution1_exercise_1
A=[1,2,3;1,4,9;1,8,27]
syms X1 X2 X3
B=[X1;X2;X3]
C=[5;-2;6]
B=inv(A)*C 
%} 


%{
Solution1_exercise_2
R=rand(5,5)
%Minimum=min(min(R))
%Maximum=max(max(R))

%R(R==Minimum)=Maximum
%Q=rand(5);
%for i=1:5
%    Q(i,:)=R(i,:) *i;
%end
%Q
Q = diag([1:4])*R
%}

%{
Solution1_exercise_3
m=[-.447,1.978,3.11,5.25,5.02,4.66,4.01,4.58,3.45,5.35,9.22] 
n=0:0.1:1
p = polyfit(n,m,3)%polyfir is used for the simulation of poly curve

n2=0:0.1:1
m2=polyval(p,n2) %y0=polyval(p,x0), we can get the value of the ploy when the x=x0.
plot(n,m,'bo',n2,m2,'rx-')
legend('Original Data', 'Curve Fitting', 'Location','southeast');
grid on
%}

%Solution1_exercise_4
[x1,x2]=meshgrid(0:0.1:4,0:0.1:4)
y=20+x1.^2+x2.^2-10*(cos(2*pi.*x1)+cos(2*pi.*x2))
surf(x1,x2,y)
