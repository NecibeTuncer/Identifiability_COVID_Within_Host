 function  ss = Target_Cell_All_Patients_ss(params,data)

  
  ode_options = odeset('RelTol',1e-2);

   sol = ode23s(@Target_Cell_rhs,data.time,data.Y0,ode_options,params);
   
    V_U_A_model = deval(sol, data.A_u_time, 3)';
    V_L_A_model = deval(sol, data.A_l_time, 6)';
    
    V_U_B_model = deval(sol, data.B_u_time, 3)';
    V_L_B_model = deval(sol, data.B_l_time, 6)';
    
    V_U_C_model = deval(sol, data.C_u_time, 3)';
    V_L_C_model = deval(sol, data.C_l_time, 6)';
    
    V_U_D_model = deval(sol, data.D_u_time, 3)';
    V_L_D_model = deval(sol, data.D_l_time, 6)';
    
    V_U_E_model = deval(sol, data.E_u_time, 3)';
    V_L_E_model = deval(sol, data.E_l_time, 6)';
    
    V_U_F_model = deval(sol, data.F_u_time, 3)';
    V_L_F_model = deval(sol, data.F_l_time, 6)';
    
    V_U_G_model = deval(sol, data.G_u_time, 3)';
    V_L_G_model = deval(sol, data.G_l_time, 6)';
    
    V_U_H_model = deval(sol, data.H_u_time, 3)';
    V_L_H_model = deval(sol, data.H_l_time, 6)';
    
    V_U_I_model = deval(sol, data.I_u_time, 3)';
    V_L_I_model = deval(sol, data.I_l_time, 6)';
    
  ss = sum((log10(V_U_A_model) - data.A_swap).^2) +  sum((log10(V_L_A_model) - data.A_sputum).^2)+...
       sum((log10(V_U_B_model) - data.B_swap).^2) +  sum((log10(V_L_B_model) - data.B_sputum).^2)+...
       sum((log10(V_U_C_model) - data.C_swap).^2) +  sum((log10(V_L_C_model) - data.C_sputum).^2)+...
       sum((log10(V_U_D_model) - data.D_swap).^2) +  sum((log10(V_L_D_model) - data.D_sputum).^2)+...
       sum((log10(V_U_E_model) - data.E_swap).^2) +  sum((log10(V_L_E_model) - data.E_sputum).^2)+...
       sum((log10(V_U_F_model) - data.F_swap).^2) +  sum((log10(V_L_F_model) - data.F_sputum).^2)+...
       sum((log10(V_U_G_model) - data.G_swap).^2) +  sum((log10(V_L_G_model) - data.G_sputum).^2)+...
       sum((log10(V_U_H_model) - data.H_swap).^2) +  sum((log10(V_L_H_model) - data.H_sputum).^2)+...
       sum((log10(V_U_I_model) - data.I_swap).^2) +  sum((log10(V_L_I_model) - data.I_sputum).^2);