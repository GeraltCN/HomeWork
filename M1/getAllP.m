function p = getAllP(T)
  p = [];
  if T == 1
    p = [0;1];
  else
    P = getAllP(T-1);
    for i = 1:size(P,1)
      p = [ [P(i,:) 1  ; ...
             P(i,:) 0 ]; p];
    end
  end
end
