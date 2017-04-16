function [X] = bezier3(Vertex)
  Bcon = [  -1 3 -3 1 ; ...
            3 -6 3 0 ; ...
            -3 3 0 0 ; ...
            1 0 0 0 ] ;
  for i = 1:50
    par = (i-1)/49;
    XY(i,:) = [par^3 par^2 par 1] * Bcon * Vertex;
  end

  plot(Vertex(:, 1), Vertex(:, 2), 'ro', XY(:, 1), XY(:, 2), 'b-')

  line(Vertex(:, 1), Vertex(:, 2), 'color', 'g')

  xlabel(' x value')
  ylabel(' y value')
  title('Square Bezier Curve')
  legend('Vertex', 'Curve', 'Control Polygon')
end
