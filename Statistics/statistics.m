%% 一様分布
pd2 = makedist('Uniform','lower',1,'upper',6);                            % Uniform distribution with a = -2 and b = 2x = -3:.01:3;
pdf1 = pdf(pd2,x);
figure;
plot(x,pdf1,'b','LineWidth',2); 
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
xlim([-1 8])
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('一様分布', 'FontSize', 15)

%% ベルヌーイ分布
p = 0.75;
x = 0:1;
y = binopdf(x,1,p);
figure
bar(x,y,1)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('ベルヌーイ分布', 'FontSize', 15)


%% 二項分布
p = 0.5;
x = 0:10;
y = binopdf(x,10,p);
figure
bar(x,y,1)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('二項分布', 'FontSize', 15)


%% ポアソン分布
x = 0:15;
y = poisspdf(x,4);
figure
bar(x,y,1)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('ポアソン分布', 'FontSize', 15)


%% 正規分布
x = -50:1:150;
y = normpdf(x,50,20);
plot(x,y)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('正規分布', 'FontSize', 15)

%% 負の指数関数分布
x = -3:0.1:3;
y = exp(-(x.^2));

figure
plot(x,y, 'LineWidth', 2)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('f(x)', 'FontName', 'Arial', 'FontSize', 12)
title('e^{-x^2} のグラフ', 'FontSize', 15)

%% 負の指数関数分布をずらす
x = -3:0.1:9;
y = exp(-((x-3).^2) / 10);

figure
plot(x,y, 'LineWidth', 2)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('f(x)', 'FontName', 'Arial', 'FontSize', 12)
title('e^{-(x-\mu)^2 / \sigma^2} のグラフ', 'FontSize', 15)

%% 標準正規分布
x = -5:0.1:5;
y = normpdf(x,0,1);
plot(x,y, 'LineWidth',2)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('標準正規分布', 'FontSize', 15)

%% t分布
x = -5:0.1:5;
y1 = tpdf(x,5);
y2 = tpdf(x,15);
z = normpdf(x,0,1);

figure;
plot(x,y1,'-.',x,y2,'--',x,z,'-', 'LineWidth', 2)
legend('\alpha=5 のt分布', ...
    '\alpha=15　のt分布', ...
    '標準正規分布')
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('標準正規分布とt分布', 'FontSize', 15)

%% F分布

x = 0:0.01:10;
y = fpdf(x,5,3);
figure;
plot(x,y, 'LineWidth', 2)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('自由度5, 3のF分布', 'FontSize', 15)

%% かいにじょーぶんぷっ
x = 0:0.2:15;
y = chi2pdf(x,4);
figure;
plot(x,y, 'LineWidth',2)
xlabel('x', 'FontName', 'Arial', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('自由度4の\chi^2分布', 'FontSize', 15)

%% ガウスの誤差理論
%% 正規分布
x = -150:1:150;
y1 = normpdf(x,0,20);
y2 = normpdf(x,50,20);

subplot(1,2,1)
plot(x,y1, 'LineWidth', 2)
xlabel('誤差の値', 'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('誤差分布(\mu=0,\sigma=20)', 'FontSize', 15)

subplot(1,2,2)
plot(x,y2, 'r','LineWidth', 2)
hold on
plot(x,y1, '.b', 'LineWidth', 1)
xlabel('実測値',  'FontSize', 12)
ylabel('p(x)', 'FontName', 'Arial', 'FontSize', 12)
title('実測値の分布(\mu=50,\sigma=20)', 'FontSize', 15)













%% 統計的仮説検定
x = 0:10;
y = binopdf(x,10,0.5);

figure
bar(x,y,1)
xylabel('確率')
xlabel('表が出る回数')