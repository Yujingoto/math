%% Entropy
%% 一様分布
x = 0.1:0.1:1;
px = zeros(1,10)+0.1;
H = -sum(px .* log(px));
txt = ['H = ' num2str(H)];
figure
bar(x,px,1)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
ylim([0 1])
legend(txt, 'FontName', 'Arial', 'FontSize', 15)
title('一様分布', 'FontSize', 15)

%% 一様分布
x = 0.01:0.01:1;
px = zeros(1,100)+0.1;
H = -sum(px .* log(px));
txt = ['H = ' num2str(H)];
figure
bar(x,px,1)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
ylim([0 1])
legend(txt, 'FontName', 'Arial', 'FontSize', 15)
title('一様分布', 'FontSize', 15)


%% 二項分布
p = 0.5;
x = 0:10;
px = binopdf(x,10,p);
H = -sum(px .* log(px));
txt = ['H = ' num2str(H)];
figure
bar(x,px,1)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
legend(txt, 'FontName', 'Arial', 'FontSize', 15)
title('二項分布', 'FontSize', 15)


%% ポアソン分布
x = 0:15;
px = poisspdf(x,4);
H = -sum(px .* log(px));
txt = ['H = ' num2str(H)];
figure
bar(x,px,1)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
legend(txt, 'FontName', 'Arial', 'FontSize', 15)
title('ポアソン分布', 'FontSize', 15)


%% 正規分布
x = -50:1:150;
px = normpdf(x,50,20);
H = -sum(px .* log(px));
txt = ['H = ' num2str(H)];
figure
plot(x,px)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
legend(txt, 'FontName', 'Arial', 'FontSize', 15)
title('正規分布(連続)', 'FontSize', 15)


%% KLD
x = -6:0.01:6;
px = normpdf(x,0,1);
qx = -4:0.01:4;
qx1 = normpdf(x,qx(201),1);
qx2 = normpdf(x,qx(401),1);
qx3 = normpdf(x,qx(601),1);
qx4 = normpdf(x,qx(801),1);

kld = qx.^2/2;
H1 = -sum(px .* log(px));
H2 = -sum(qx1 .* log(qx1));


figure

subplot(2,4,1)
grid on
plot(x,px, 'LineWidth', 1.5)
hold on
plot(x,qx1, 'LineWidth', 1.5)
legend(['p(x)'; 'q(x)'], 'FontName', 'Arial', 'FontSize', 8)
hold off

subplot(2,4,2)
grid on
plot(x,px, 'LineWidth', 1.5)
hold on
plot(x,qx2, 'LineWidth', 1.5)
legend(['p(x)'; 'q(x)'], 'FontName', 'Arial', 'FontSize', 8)
hold off

subplot(2,4,3)
grid on
plot(x,px, 'LineWidth', 1.5)
hold on
plot(x,qx3, 'LineWidth', 1.5)
legend(['p(x)'; 'q(x)'], 'FontName', 'Arial', 'FontSize', 8)
hold off


subplot(2,4,4)
grid on
plot(x,px, 'LineWidth', 1.5)
hold on
plot(x,qx4, 'LineWidth', 1.5)
legend(['p(x)'; 'q(x)'], 'FontName', 'Arial', 'FontSize', 8)
hold off

subplot(2,4,5)
grid on
plot(qx,kld)
hold on
plot(qx(201),kld(201),'.', 'MarkerSize',15)
xlim([-4 4])
ylabel('KL(p||q)',  'FontName', 'Arial', 'FontSize', 10)
xlabel('\mu diff',  'FontName', 'Arial', 'FontSize', 10)
hold off

subplot(2,4,6)
grid on
plot(qx,kld)
hold on
plot(qx(401),kld(401),'.', 'MarkerSize',15)
xlim([-4 4])
ylabel('KL(p||q)',  'FontName', 'Arial', 'FontSize', 10)
xlabel('\mu diff',  'FontName', 'Arial', 'FontSize', 10)
hold off

subplot(2,4,7)
grid on
plot(qx,kld)
hold on
plot(qx(601),kld(601),'.', 'MarkerSize',15)
xlim([-4 4])
ylabel('KL(p||q)',  'FontName', 'Arial', 'FontSize', 10)
xlabel('\mu diff',  'FontName', 'Arial', 'FontSize', 10)
hold off

subplot(2,4,8)
grid on
plot(qx,kld)
hold on
plot(qx(801),kld(801),'.', 'MarkerSize',15)
xlim([-4 4])
ylabel('KL(p||q)',  'FontName', 'Arial', 'FontSize', 10)
xlabel('\mu diff',  'FontName', 'Arial', 'FontSize', 10)
hold off


%% CCA
clear;
sig = ones(1,50);
common1 = [sig sig*0 sig*-1 sig*0 sig sig*0 sig*-1]*0.2;
common2 = [sig*0 sig*-1 sig*-2 sig*-1 sig*0 sig sig*2]*0.2;

len = length(common1);
noise1 = randn(1,len);
noise2 = randn(1,len);

%X = [common+noise1; common-noise1; randn(1,len); randn(1,len)*2];
%Y = [common+noise2; common-noise2; randn(1,len)];

X = [common1+noise1; common2-noise1; randn(1,len); randn(1,len)*2];
Y = [common1+noise2; common2-noise2; randn(1,len)];


[A,B,r,U,V] = canoncorr(X',Y');

figure;
subplot(2,1,1)
plot(common1)
title('step-like signal', 'FontName', 'Arial', 'FontSize', 15);
ylim([-0.5 0.5]);

subplot(2,1,2)
plot(common2)
title('step-like signal', 'FontName', 'Arial', 'FontSize', 15);
ylim([-0.5 0.5]);

figure
subplot(4,2,1)
plot(X(1,:))
title('X1', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,3)
plot(X(2,:))
title('X2', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,5)
plot(X(3,:))
title('X3', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,7)
plot(X(4,:))
title('X4', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,2)
plot(Y(1,:))
title('Y1', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,4)
plot(Y(2,:))
title('Y2', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,6)
plot(Y(3,:))
title('Y3', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

sgtitle('Original signals', 'FontName', 'Arial', 'FontSize', 15);

figure
subplot(4,2,1)
plot(U(:,1))
title('U1', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,3)
plot(U(:,2))
title('U2', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,5)
plot(U(:,3))
title('U3', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,2)
plot(V(:,1))
title('V1', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,4)
plot(V(:,2))
title('V2', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,6)
plot(V(:,3))
title('V3', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

sgtitle('Generated signals', 'FontName', 'Arial', 'FontSize', 15);


%% CCA 2
%% CCA
clear;
t = -2*pi:1/100:2*pi;
sig1 = sin(2*pi*2*t);
sig2 = sin(2*pi*5*t);
common1 = sig1(253:953);
common2 = sig1(388:1088);
common3 = sig2(138:838);
common4 = sig2(421:1121);

len = length(common1);
noise1 = randn(1,len);
noise2 = randn(1,len);

%X = [common1+noise1; common2-noise1; randn(1,len); randn(1,len)*2];
%Y = [common1+noise2; common2-noise2; randn(1,len)];

X = [common1+noise1; common3-noise1; randn(1,len); randn(1,len)*2];
Y = [common2+noise2; common4-noise2; randn(1,len); randn(1,len)];

[A,B,r,U,V] = canoncorr(X',Y');

figure;
subplot(2,1,1)
plot(sig1)
title('sine-wave1', 'FontName', 'Arial', 'FontSize', 15);
ylim([-0.5 0.5]);
xlim([0 700]);

subplot(2,1,2)
plot(sig2)
title('sine-wave2', 'FontName', 'Arial', 'FontSize', 15);
ylim([-0.5 0.5]);
xlim([0 700]);

figure
subplot(4,2,1)
plot(X(1,:))
title('X1', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,3)
plot(X(2,:))
title('X2', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,5)
plot(X(3,:))
title('X3', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,7)
plot(X(4,:))
title('X4', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,2)
plot(Y(1,:))
title('Y1', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,4)
plot(Y(2,:))
title('Y2', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,6)
plot(Y(3,:))
title('Y3', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,8)
plot(Y(4,:))
title('Y4', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

sgtitle('Original signals', 'FontName', 'Arial', 'FontSize', 15);

figure
subplot(4,2,1)
plot(U(:,1))
title('U1', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,3)
plot(U(:,2))
title('U2', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,5)
plot(U(:,3))
title('U3', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,7)
plot(U(:,4))
title('U4', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,2)
plot(V(:,1))
title('V1', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,4)
plot(V(:,2))
title('V2', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,6)
plot(V(:,3))
title('V3', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

subplot(4,2,8)
plot(V(:,4))
title('V4', 'FontName', 'Arial', 'FontSize', 12);
xlim([0 350])

sgtitle('Generated signals', 'FontName', 'Arial', 'FontSize', 15);



%% Machine learning
% uni normal dist
x = 0:1:100;
px = normpdf(x,80,5);
figure
plot(x,px)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
legend('sub1', 'FontName', 'Arial', 'FontSize', 15)
title('実験結果(ガウス分布)', 'FontSize', 15)

%% mixed normal dist
x = 0:1:100;
mu = [80,50];
sigma = [5,7];
px1 = normpdf(x,mu(1),sigma(1));
px2 = normpdf(x,mu(2),sigma(2));
px = px1+px2;
figure
plot(x,px,'-k','LineWidth',1.2)

hold on
plot(x,px1, '--b')
plot(x,px2, '--r')
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
legend('x','sub1', 'sub2', 'FontName', 'Arial', 'FontSize', 15)
title('実験結果(混合ガウス分布)', 'FontSize', 15)
hold off