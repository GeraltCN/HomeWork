function l = isBT(k, X)

  S = [0 5 12 7 11 18 16 ; ...
       5 0 7 11 4 11 11 ; ...
       12 7 0 14 9 6 13 ; ...
       7 11 14 0 5 12 12 ; ...
       11 4 9 5 0 7 7 ; ...
       18 11 6 12 7 0 12 ; ...
       16 11 13 12 7 12 0 ];

  l = 0;
  nR = Inf;
  for i = 1:7
      if X(i)
        nR = min(S(k, i), nR);
      end
  end
  if nR<=10
    l = 1;
  end
end

