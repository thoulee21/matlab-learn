% 生成两个示例信号
x = sin(2 * pi * 0.5 * t);
y = cos(2 * pi * 0.1 * t);

% 信号加法
add_signal = x + y;

% 信号减法
sub_signal = x - y;

% 信号乘法
mul_signal = x .* y;

% 信号平移
shift_amount = 10;
trans_signal = [zeros(1, shift_amount), x(1:end-shift_amount)];

% 反褶（时域反转）
fold_signal = fliplr(x); 

% 尺度变换
scale_factor = 2;
scale_signal = x .* scale_factor;

% 绘制运算结果
figure;
subplot(8, 1, 1); plot(t, x); title('Original X');
subplot(8, 1, 2); plot(t, y); title('Original Y');
subplot(8, 1, 3); plot(t, add_signal); title('Addition of Signals');
subplot(8, 1, 4); plot(t, sub_signal); title('Subtraction of Signals');
subplot(8, 1, 5); plot(t, mul_signal); title('Multiplication of Signals');
subplot(8, 1, 6); plot(t, trans_signal); title('Translation of Signal X');
subplot(8, 1, 7); plot(t, fold_signal); title('Folding of Signal');
subplot(8, 1, 8); plot(t, scale_signal); title('Scaling of Signal');
