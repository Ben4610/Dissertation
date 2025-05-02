%Brownian Motion 
N = 1000;
dt = 1;
D = 1;
x = cumsum(sqrt(2*D*dt) * randn(N,1)); 
y = cumsum(sqrt(2*D*dt) * randn(N,1));
figure;
plot(x, y, '-b', 'LineWidth', 1.5);
hold on;
plot(x(1), y(1), 'go', 'MarkerSize', 10, 'MarkerFaceColor', 'g'); % Start
plot(x(end), y(end), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); % End
grid on;
xlabel('X Position');
ylabel('Y Position');
legend('Trajectory', 'Start', 'End');

N = 1000;
numPaths = 5;
dt = 1;
D = 1;
figure;
hold on;
grid on;
xlabel('X Position');
ylabel('Y Position');

for i = 1:numPaths
    x = cumsum(sqrt(2*D*dt) * randn(N,1));
    y = cumsum(sqrt(2*D*dt) * randn(N,1));
    plot(x, y, 'LineWidth', 1.5);
    plot(x(1), y(1), 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g'); % Start
    plot(x(end), y(end), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % End
end
legend('Trajectories', 'Start Points', 'End Points');