  function dy = Target_Cell_rhs(t,y,params)


  beta_u = params(1);
  delta_u = params(2);
  c_u = params(3);
  k_u = params(4);
  beta_l = params(5);
  delta_l = params(6);
  c_l = params(7);
  k_l = params(8);
  K = params(9);

  
    dy = [- beta_u*y(1)*y(3);
          beta_u*y(1)*y(3) -  delta_u*y(2);
          y(2) - c_u*y(3) + k_l*y(6);
        - beta_l*y(4)*y(6);
          beta_l*y(4)*y(6) -  delta_l*y(5);
          y(5) - c_l*y(6)*y(6)/(y(6) + K) + k_u*y(3)];
      
%   dy = [- exp(beta_u)*y(1)*y(3);
%           exp(beta_u)*y(1)*y(3) -  delta_u*y(2);
%           y(2) - c_u*y(3) + exp(k_l)*y(6);
%         - exp(beta_l)*y(4)*y(6);
%           exp(beta_l)*y(4)*y(6) -  delta_l*y(5);
%           y(5) - c_l*y(6)*y(6)/(y(6) + K) + exp(k_u)*y(3)];

