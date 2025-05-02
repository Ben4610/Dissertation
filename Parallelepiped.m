figure('Position', [100, 100, 1200, 500]);

%Parallelepiped
subplot(1,2,1);
hold on;

corner = [0, 0, 0];
v1 = [3, 0, 0];    % E1
v2 = [1, 2, 0];    % E2
v3 = [0.5, 0, 2];  % E3

vertices = [
    corner;
    corner + v1;
    corner + v2;
    corner + v1 + v2;
    corner + v3;
    corner + v1 + v3;
    corner + v2 + v3;
    corner + v1 + v2 + v3
];

faces = [
    1, 2, 4, 3;   % B
    5, 6, 8, 7;   % T
    1, 2, 6, 5;   % F
    3, 4, 8, 7;   % B
    1, 3, 7, 5;   % L
    2, 4, 8, 6    % R
];

patch('Vertices', vertices, 'Faces', faces, ...
      'FaceColor', [0.2, 0.6, 0.9], 'FaceAlpha', 0.7, ...
      'EdgeColor', 'k', 'LineWidth', 1.5);
axis equal;
grid on;
xlabel('X'); ylabel('Y'); zlabel('Z');
view(3);

% Cube
subplot(1,2,2);
hold on;

cube_vertices = [
    -1 -1 -1;   % V1
     1 -1 -1;   % V2
    -1  1 -1;   % V3
     1  1 -1;   % V4
    -1 -1  1;   % V5
     1 -1  1;   % V6
    -1  1  1;   % V7
     1  1  1;   % V8
];

cube_faces = [
    1, 2, 4, 3;   % B
    5, 6, 8, 7;   % T
    1, 2, 6, 5;   % F
    3, 4, 8, 7;   % B
    1, 3, 7, 5;   % L
    2, 4, 8, 6    % R
];

patch('Vertices', cube_vertices, 'Faces', cube_faces, ...
      'FaceColor', [0.9, 0.3, 0.2], 'FaceAlpha', 0.7, ...
      'EdgeColor', 'k', 'LineWidth', 1.5);
axis equal;
grid on;
xlabel('X'); ylabel('Y'); zlabel('Z');
view(3);
