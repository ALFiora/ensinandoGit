% (c)−MagnoEnriqueMendozaMeza
% Aula3−Exemplo1
closeall
clearall
clc
% Numeradoredenominadordosistemacontinuo
ns=[11];
ds=[16∗0.59];
%FunÃ§caodetransferenciadosistemaemtempocontinuo
G=tf(ns,ds);
%Periododeamostragemparaobteronumeradoredenominador
%dosistemadiscretodoExemplo3.1
T=0.2;
%Converteosistemacontinuoemumsistemadiscreto
Gz=c2d(G,T,’zoh’);
[nz,dz]=tfdata(Gz,’v’);
%Defineafuncaodeltadiscreta
n=40;
u=[1zeros(1,n)];
%Respostaaentradadeltadiscreta
y=filter(nz,dz,u);
%Vetorcorrespondenteaonumerodeiteracoes
k=0:n;
figure(1)
stairs(k,y);
grid;
size_font
figure(2)
dimpulse(nz,dz,k);
grid;
size_font
figure(3)
subplot(121)
stairs(k,y,’LineWidth’,2);
ylabel(’Amplitude’);
xlabel(’Iteracao’);
title(’Respostaaoimpulso(stairs)’);
grid;
subplot(122)
dimpulse(nz,dz,k);
grid;
size_font
print(’comparacao_comandos’,’−dpng’)

