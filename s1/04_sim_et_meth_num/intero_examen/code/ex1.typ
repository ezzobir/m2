#import "@preview/sourcerer:0.2.1": code

#code(
  lang: "Matlab",
  text-style: (lang: "en",size: 13pt, font: "Iosevka"),
  line-spacing: .5em,
```matlab
%paramètres
L=1;T=1;N=128;M=512;h=L/N;k=T/M;v=1; g=@(x) sin((2.*pi.*x)/L);
xi=0:h:1;lambda=0.25;
%Les conditions aux bords au t=T/M=k
U0t=-sin(2*pi*v*(T/M));
U1t=-sin(2*pi*v*(T/M));
%Les vecteurs
C=(lambda/2)*[-U0t,zeros(1,N-3),U1t];
U0=g(xi(2:end-1));
%la matrice
I=eye(N-1,N-1);
A1=diag(ones(N-2,1),-1)*(-lambda/2);
A2=diag(ones(N-2,1),1)*(lambda/2);
Ah=(I+A1+A2);
%la solution au t=T/M
U=inv(Ah)*(U0-C)';
Uh=[U0t;U;U1t];
%solution exacte
F=@(x) sin(2.*pi.*(x-v.*(T/M))/L);
figure(1)
plot(xi,Uh,'b*')
hold on
plot(xi,F(xi),'r-')
xlabel('x')
ylabel('u(x,t)')
legend('solution par DF','solution exacte')
title('Solution par DF(schéma implicite centré) au point t=k')
%Erreur
Z=F(xi(1:end))';
for i=1:N+1
ZZ(i)=abs(Z(i)-Uh(i));
end
figure(2)
plot(xi,ZZ)
xlabel('x')
ylabel('err')
```
)