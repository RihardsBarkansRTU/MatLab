%% Ievads 1

UM = [-1 0.3 1.5 2.5 3.2]
IM = [1.1 2.2 2.1 3.2 4.7]
plot(UM,IM,'o-')
%% Ievads 2

UM = [-1 0.3 1.5 2.5 3.2]
IM = [1.1 2.2 2.1 3.2 4.7]
x = UM
y = IM
c = polyfit(UM,IM,2)
U = linspace(-1,3.2,500);
I = C(1)*U.^2+C(2).*U+C(3);
plot(UM,IM,'o',U,I)
xlabel('Um,V')
ylabel('Im,mA')
legend('Mērijuma dati','pielāgots 2. kārtas polinoms')
%% 1. Uzdevums

UM = [-1 0.3 1.5 2.5 3.2]
IM = [1.1 2.2 2.1 3.2 4.7]
x = UM
y = IM
c = polyfit(UM,IM,3)
U = linspace(-1,3.2,500);
I = c(1)*U.^3+c(2).*U.^2+c(3).*U+c(4);
plot(UM,IM,'o',U,I)
xlabel('Um,V')
ylabel('Im,mA')
legend('Mērijuma dati','pielāgots 3. kārtas polinoms')
%% 2. Uzdevums

UM = [-1 0.3 1.5 2.5 3.2]
IM = [1.1 2.2 2.1 3.2 4.7]
x = UM
y = IM
C = polyfit(UM,IM,4) %veido koeficentus
U = linspace(-1,3.2,500);
I = polyval(C,U); %veido polinomu pēc c elem. skaita
plot(UM,IM,'o',U,I)
xlabel('Um,V')
ylabel('Im,mA')
legend('Mērijuma dati','pielāgots 4. kārtas polinoms')
title('Polinoma interpolācija')
%% 3. Uzdevums

UM = [-1 0.3 1.5 2.5 3.2]
IM = [1.1 2.2 2.1 3.2 4.7]
x = UM
y = IM
C = polyfit(UM,IM,1)
U = linspace(-1,3.2,500);
I = polyval(C,U);
plot(UM,IM,'o',U,I)
xlabel('Um,V')
ylabel('Im,mA')
legend('Mērijuma dati','pielāgots 1. kārtas polinoms')
title('Polinoma aproksimācija')
%% 4. Uzdevums

UM = [-1 0.3 1.5 2.5 3.2]
IM = [1.1 2.2 2.1 3.2 4.7 
    0.9 1.8 2.6 3.3 4.5
    1.0 2.0 2.4 3.4 4.3
    0.8 1.9 2.3 3.5 4.4
    0.9 2.1 2.5 3.6 4.4]
figure
plot(UM,IM,'o-')
title('Nē, nepareizs')
%% 5. Uzdevums

UM = [-1 0.3 1.5 2.5 3.2]
IM = [1.1 2.2 2.1 3.2 4.7 
    0.9 1.8 2.6 3.3 4.5
    1.0 2.0 2.4 3.4 4.3
    0.8 1.9 2.3 3.5 4.4
    0.9 2.1 2.5 3.6 4.4]'
figure(3)
plot(UM,IM,'o-')
title('Jā, pareizs')
%% 6. Uzdevums

UM = [-1 0.3 1.5 2.5 3.2]
IM = [1.1 2.2 2.1 3.2 4.7 
    0.9 1.8 2.6 3.3 4.5
    1.0 2.0 2.4 3.4 4.3
    0.8 1.9 2.3 3.5 4.4
    0.9 2.1 2.5 3.6 4.4]
Imean = mean(IM)
U = linspace(-1,3.2,500);
C = polyfit(UM,Imean,4)
I = polyval(C,U)
plot(UM,Imean,'*',U,I,'-',UM,IM','o')
standart_deviation = std(IM) %standart deviation
hold on
errorbar(UM,Imean,standart_deviation,'.')
hold off
%% 7. Uzdevums

A = imread('v9.JPG');
figure(1),image(A)
