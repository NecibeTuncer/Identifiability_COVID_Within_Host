 function  ss = Target_Cell_ss(params,data)

  
  ode_options = odeset('RelTol',1e-2);

   sol = ode23s(@Target_Cell_rhs,data.time,data.Y0,ode_options,params);
   
    V_U_model = deval(sol, data.u_time, 3)';
    V_L_model = deval(sol, data.l_time, 6)';
  ss = sum((log10(V_U_model) - data.swap).^2) +  sum((log10(V_L_model) - data.sputum).^2);
