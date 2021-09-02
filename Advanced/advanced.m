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