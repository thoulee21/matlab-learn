%非周期信号的频谱图
% 生成一个非周期信号
t = 0:0.001:1;
x = sin(2*pi*50*t) .* (t <= 0.5);

% 计算频谱
X = fft(x);
f = (0:length(X)-1)*1000/length(X);

% 绘制频谱图
figure;
plot(f, abs(X));
title('非周期信号的频谱图');
xlabel('频率 (Hz)');
ylabel('幅度');
