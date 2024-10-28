% 定义时间向量
t = -1:0.01:5;

% 单位冲激响应 h(t)
h = (t >= 0) .* exp(-t);

% 绘制单位冲激响应
figure;
plot(t, h);
title('单位冲激响应 h(t)');
xlabel('时间 t');
ylabel('幅值');