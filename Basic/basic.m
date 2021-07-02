%% Listing 1.1. 
3 * 5;

%% Listing 1.2.
x = [1 2 3];
y = [4 5 6];
dot(x,y)

%% Listing 2.1.
sp=0.0005;
x = (0:sp: 2*pi)';
plot(sin(x), 'LineWidth', 2)
hold on
plot(cos(x) ,'LineWidth', 2)
xticks((0:pi/2: 2*pi)/sp)
xticklabels({0, '1/2π','π','3/2π','2π'})
xlabel('Phase(π)','FontName','Arial', 'FontSize', 18)
xlim([0 2*pi/sp])
legend("sin(x)","cos(x)",'FontSize', 14)
hold off


%% Listing 2.2.
syms x;
int(cos(x), [0 2*pi]);
int(sin(x), [0 2*pi]);
int((2*(sin(3*x))*(3*cos(10*x))), [0 2*pi])


%% 様々なsin波の図
sp = 0.005;
x = (-2*pi:sp: 2*pi)';
plot(sin(x), 'LineWidth', 2)
hold on
plot(2*sin(x) ,'LineWidth', 2)
plot(sin(2*x) , 'LineWidth', 2)
xticks(0:pi/sp: length(x))
xticklabels({'-2π', '-π','0','π','2π'})
xlabel('Phase(π)','FontName','Arial', 'FontSize', 18)
xlim([0 length(x)])
legend("sin(x)","2sin(x)", "sin(2x)",'FontSize', 14)
hold off

%% Lisiting 3.1.
3*1i + 5*1i;
3*1i * 5*1i;

%% Listing 3.2.
x = 3 + 4*1i;
real(x);  % 実部
imag(x);  % 虚部
abs(x);   % ノルム，絶対値
angle(x); % 偏角
conj(x);  % 複素共役

%% Listing 4.1.
syms x;
diff(cos(x));
diff(cos(x)*sin(x));
diff(exp(x));

%% Listing 4.2.
int(2*x);

%% Listing 4.3.
int(fx, [a b]);

%% Listing 4.4
K = [1 2 3 4 5];
sum(K);

%% Listing 4.5.
x = cos(3* (0:0.1:20));
y = [zeros(1,100) ones(1,20) zeros(1,81)];
z = conv(x,y);
subplot(2,1,1);
plot(x);
hold on;
plot(y);
xlim([0 200]);
ylim([-1.2 1.2]);
legend("三角波", "フィルター");
title("Raw signal and filter");
hold off;
subplot(2,1,2);
plot(z);
xlim([0 400]);
title("Filterd signal");

%% Listing 5.1.
x = [1 2 3 4];
mean(x);
var(x);
std(x);

%% Listing 5.2.
x= [1 2 3 4];
for i=x
    x([i]) = ((x([i]) - mean(x)) /std(x)); %#ok<*NBRAK>
end

z = normalize(x); % 関数使うとこう

%% Listing 5.3.
% 正の相関あり
x = [0:0.1:10]+ rand(1,101);
y = [0:0.1:10];
scatter(x,y);

% 負の相関あり
x = [0:0.1:10] + rand(1,101);
y = [0:-0.1:-10];
scatter(x,y);

% 相関なし
x = rand(1,100);
y = rand(1,100);
scatter(x,y);

%% Listing 5.4.
x = [0:0.1:10]+ rand(1,101);
y = [0:0.1:10];
mdl = fitlm(x,y);
scatter(x,y);
hold on;
plot(mdl);
hold off;

%% Listing 5.5.
x = [0:0.1:10]+ rand(1,101);
y = [0:0.1:10];
Sxy = (sum((x - mean(x)).*(y - mean(y))))/length(x);
cov(x,y); %関数を使うとこう(共分散行列)

%% Listing 5.6.
x = [0:0.1:10]+ rand(1,101);
y = [0:0.1:10];

% ひ，ひぇぇ...
cov(x,y) / (std(x) * std(y));
% つまり...
((sum((x - mean(x)).*(y - mean(y))))/length(x)) / (sqrt(sum((x - mean(x)).^2) ...
    /length(x)) * sqrt(sum((y - mean(y)).^2)/length(y)));

% 関数を使うとこう．相関係数行列
corrcoef(x,y);