% 定义两个连续时间信号
t = -5:0.01:5;
x = exp(-t) .* (t >= 0);  % 信号 x(t)
h = (t >= 0 & t <= 2);    % 信号 h(t)

% 计算卷积
y = conv(x, h, 'same') * 0.01;  % 'same' 参数用于返回与输入信号相同长度的卷积结果

% 绘制信号和卷积结果
figure;
subplot(3, 1, 1);
plot(t, x);
title('信号 x(t)');
xlabel('时间 t');
ylabel('幅值');

subplot(3, 1, 2);
plot(t, h);
title('信号 h(t)');
xlabel('时间 t');
ylabel('幅值');

subplot(3, 1, 3);
plot(t, y);
title('卷积结果 y(t) = x(t) * h(t)');
xlabel('时间 t');
ylabel('幅值');