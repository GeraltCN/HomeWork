function A = getAmount(X)

  Q = [700 500 1100 800 600 1400 1600  ; ...
       500 400  700 600 450  600  700 ];

  A = zeros(1, 7);

  for i = 1:7
    A(i) = Q(-isBT(i, X)+2, i);
  end

end

