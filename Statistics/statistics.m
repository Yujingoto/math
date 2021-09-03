%% 統計的仮説検定
x = 0:10;
y = binopdf(x,10,0.5);

figure
bar(x,y,1)
xylabel('確率')
xlabel('表が出る回数')