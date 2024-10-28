% 定义时间向量
t = -1:0.01:5;

% 单位阶跃信号 u(t)
u = t >= 0;

% 阶跃响应 h(t) 的卷积
y = conv(u, h, 'same') * 0.01;

% 绘制阶跃响应
figure;
plot(t, y);
title('阶跃响应 y(t)');
xlabel('时间 t');
ylabel('幅值');