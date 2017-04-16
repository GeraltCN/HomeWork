function [X] = bezier2(Vertex)
  Bcon = [  1 -2 1 ; ...
           -2  2 0 ; ...
            1  0 0 ] ;
  for i = 1:50
    par = (i-1)/49;
    XY(i,:) = [par^2 par 1] * Bcon * Vertex;
  end

  plot(Vertex(:, 1), Vertex(:, 2), 'ro', XY(:, 1), XY(:, 2), 'b-')

  line(Vertex(:, 1), Vertex(:, 2), 'color', 'g')

  xlabel(' x value')
  ylabel(' y value')
  title('Square Bezier Curve')
  legend('Vertex', 'Curve', 'Control Polygon')
end
