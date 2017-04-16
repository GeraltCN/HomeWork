function F = getProfit(X)

  C = [240 280 220 260 380 250 200];

  % 维修站开销
  Cost = C * X';

  % 销售额
  A = getAmount(X);

  F = 2*sum(A) - Cost;
  
  
end
