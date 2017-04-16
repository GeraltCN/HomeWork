function [n max] = accioAnswer
  
  P = getAllP(7);
  n = 0;
  max = -Inf;

  for i = 1:size(P, 1)
    pprofit = getProfit(P(i,:));
    if pprofit > max
      n = i;
      max = pprofit;
    end
  end
end
