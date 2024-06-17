#import "@preview/sourcerer:0.2.1": code

#code(
  lang: "Matlab",
  text-style: (lang: "en",size: 13pt, font: "Iosevka"),
  line-spacing: .5em,
```matlab
%solution par volumes finis
%Les paramètres
a=0;b=1;n=100;h=(b-a)/n;ubeg=0;uend=0;alpha=1; xn=[h/2:h:b-h/2];xnn=[a,xn,b];
xi=[a:h:b];f=@(x) x.^2;F=zeros(n,1);
%le systиme
for i=1:n
F(i)=(1/h)*integral(f,xi(i),xi(i+1));
end
F(1)=F(1)+2*ubeg/h^2;
F(n)=F(n)+2*uend/h^2;
A1=diag(ones(n-1,1),1)*-1;
A2=diag(ones(n-1,1),-1)*-1;
A3=diag(ones(n,1))*(2+alpha*h^2);
A=A1+A2+A3;
A(1,1)=3+alpha*h^2;
A(n,n)=3+alpha*h^2;
Ah=(1/h^2)*A;
%la solution approximative
U=inv(Ah)*F;
Uh=[ubeg;U;uend];
%solution analytique
syms y(t)
ysym=dsolve('-D2y+y=t^2','y(0)=0','y(1)=0','t');
%les courbes
plot(xnn,subs(ysym,t,xnn))
hold on
plot(xnn,Uh,'r*')
legend('solution exacte','solution par VF')
xlabel('x')
ylabel('u(x)')
title('Solution par VF')
%Erreur
Sol=subs(ysym,t,xnn);
Z=zeros(1,n+1);
for i=1:n+1
Z(i)=abs(Sol(i)-Uh(i));
end
Z';
```
)