%   Bayesian Approach for parameter distribution based on Wolfer data--- 
%

  clear all
  close all
  clc

addpath 'C:\Users\stanca\Dropbox\Within_Host_Models_MCMC\mcmcstat-master'
%addpath '/Users/necibetuncer/Documents/Research/Within_Host_COVID_19/MatlabCode/mcmcstat-master'



% Set parameters and initial conditions
%

  T0 = 2e+10;
  Ti0 = 0;
  V0 = 0.1;
  T0_l = 2e+11;
  Ti0_l = 0;
  V0_l = 0.1;

%   beta_u = 8.9097e-09;
%   delta_u = 4.6386;
%   c_u = 4.2633;
%   k_u = 0.6223;
% 
%   beta_l = 9.3029e-11;
%   delta_l = 2.9858;
%   c_l = 9.2103;
%   k_l = 0.0359;
% K = 1840;

%logarithmic parameter values

 beta_u = -18.5361;
  delta_u = 4.6386;
  c_u = 4.2633;
  k_u = -0.4743;
  
  beta_l = -23.0981;
  delta_l = 2.9858;
  c_l = 9.2103;
  k_l = -3.3270;

  K = 1840;

  tf = 32;
  dt = 0.1;
  tforward = 0:dt:tf;

% % % Cosntruct chains, marginal, and joint densities using DRAM.


  data.time = tforward;
  data.Y0 = [T0; Ti0; V0;T0_l; Ti0_l; V0_l];
  sigma = 5.62;

  %generate_Data
  tmeasurements = 71:1/dt:311;
  pmin = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K]';
  
   data_exp1 = TIVmodel(data.time,pmin,data.Y0);
   
   data.swap = data_exp1(tmeasurements,1);
   data.sputum = data_exp1(tmeasurements,2);
   
   %error = sigma*randn(size(data.swap));
   error = 0.5*randn(size(data.swap));
   data.swap = data.swap + error;
   data.sputum = data.sputum + error;
   
   data.u_time = 7:1:31;
   data.l_time = 7:1:31;
   plot(data.time,data_exp1(:,1),'r')
   hold on 
   plot(tforward(tmeasurements),data.swap,'o')
   figure
   plot(data.time,data_exp1(:,2),'r')
   hold on 
   plot(tforward(tmeasurements),data.sputum,'o')
  
  mu_par = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K];
 
%   params = {
%      {'beta_u',pmin(1),1e-12, 1e-7, mu_par(1),1e-8} %initial,min,max,pri_mu,pri_sig
%      {'delta_u',pmin(2),0,50, mu_par(2), 0.5}
%      {'c_u',pmin(3),0,30, mu_par(3), 0.5}
%      {'k_u',pmin(4),1e-6,1,mu_par(4), 0.1}
%      {'beta_l',pmin(5),1e-12, 1e-7, mu_par(5),1e-10} %initial,min,max,pri_mu,pri_sig
%      {'delta_l',pmin(6),0,50, mu_par(6), 0.5}
%      {'c_l',pmin(7),0,30, mu_par(7), 0.5}
%      {'k_l',pmin(8),1e-6,1,mu_par(8), 1e-2}
%      {'K', pmin(9),0,3000, mu_par(9),100}
%      };

  params = {
     {'beta_u',pmin(1),-25, -14, mu_par(1),1} %initial,min,max,pri_mu,pri_sig
     {'delta_u',pmin(2),0,50, mu_par(2), 1}
     {'c_u',pmin(3),0,30, mu_par(3), 1}
     {'k_u',pmin(4),-7,4,mu_par(4), 1}
     {'beta_l',pmin(5),-30, -15, mu_par(5),1} %initial,min,max,pri_mu,pri_sig
     {'delta_l',pmin(6),0,50, mu_par(6), 1}
     {'c_l',pmin(7),0,30, mu_par(7), 1}
     {'k_l',pmin(8),-11,0,mu_par(8), 1}
     {'K', pmin(9),0,5000, mu_par(9),100}
     };

  model.ssfun = @Target_Cell_ss;
  model.sigma2 = sigma^2;
  options.nsimu = 1e+6;


  % [results,chain,s2chain] = mcmcrun(model,data,params,options);
   
  % save('Workspace_for_Experiment2_log_params_March12')
   
%    
% 
%   
