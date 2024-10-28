% 生成时间向量
t = -10:0.01:10;

% 阶跃信号
step_signal = t >= 0;

% 脉冲信号
impulse_signal = t == 0;

% 指数信号
exp_signal = exp(t);

% 正弦信号
sine_signal = sin(2 * pi * t);

% 周期矩形波信号
square_wave_signal = square(2 * pi * 0.5 * t);

% 绘制信号
figure;
subplot(5, 1, 1); plot(t, step_signal); title('Step Signal');
subplot(5, 1, 2); stem(t, impulse_signal); title('Impulse Signal');
subplot(5, 1, 3); plot(t, exp_signal); title('Exponential Signal');
subplot(5, 1, 4); plot(t, sine_signal); title('Sine Signal');
subplot(5, 1, 5); plot(t, square_wave_signal); title('Square Wave Signal');