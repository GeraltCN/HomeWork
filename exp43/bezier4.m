function [X] = bezier4(Vertex)
  Bcon = [  1 -4 6 -4 1 ; ...
            -4 12 -12 4 0; ...
            6 12 6 0 0 ; ...
            -4 4 0 0 0 ; ...
            1 0 0 0 0 ] ;
  for i = 1:50
    par = (i-1)/49;
    XY(i,:) = [par^4 par^3 par^2 par 1] * Bcon * Vertex;
  end

  plot(Vertex(:, 1), Vertex(:, 2), 'ro', XY(:, 1), XY(:, 2), 'b-')

  line(Vertex(:, 1), Vertex(:, 2), 'color', 'g')

  xlabel(' x value')
  ylabel(' y value')
  title('Square Bezier Curve')
  legend('Vertex', 'Curve', 'Control Polygon')
end
