f_s = 100;
T_s = 1/f_s;
t = [-5:T_s:5];
x1 = rect(t);
x2 = rect(t-1);
x3 = rect(t/2);
x4 = rect(t)+(1/2)*rect(t-1);
x5 = rect(-t)+(1/2)*rect(-t-1);
x6 = rect(1-t)+(1/2)*rect(-t);

subplot(3,2,1)
plot(t,x1) 
axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_1(t) = rect(t)')
title ('Plot 1: A rectangular pulse');

subplot(3,2,3)
plot(t,x2)
axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_2(t) = x_1(t-1)')
title ('Plot 2: Shifted rectangular pulse');

subplot(3,2,5)
plot(t,x3)
axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_3(t) = x_1(t/2)')
title ('Plot 3: Expanded rectangular pulse');

subplot(3,2,2)
plot(t,x4) 
axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_4(t) = rect(t)+(1/2)rect(t-1)')
title ('Plot 4');

subplot(3,2,4)
plot(t,x5) 
axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_5(t) = x_4(-t)')
title ('Plot 5');

subplot(3,2,6)
plot(t,x6) 
axis( [-2 2 -1 2]);
xlabel( 'time (sec)' )
ylabel('x_6(t) = x_4(1-t)')
title ('Plot 6');