%   Bayesian Approach for parameter distribution based on Wolfer data--- 
%

  clear all
  close all
  clc

addpath 'C:\Users\stanca\Dropbox\Within_Host_Models_MCMC\mcmcstat-master'
%addpath '/Users/necibetuncer/Documents/Research/Within_Host_COVID_19/MatlabCode/mcmcstat-master'


data.sputum =[
6.921649843
5.852208671
6.446543227
4.647333598
5.191759376
4.395487772
3.954902507
3.059574972];

data.swap = [
6.44123019
5.005395032
2.826517334
3.612206046
2.894235741
2.693287157
2.682102388
3.16252204];

% time is the days post symptoms onset
% incubation period for patient B is 4 days

data.u_time = [4 5 6 7 8 9 12 13]' + 4;
data.l_time = [4 6 7 8 9 10 11 13]' + 4;

%
% Set parameters and initial conditions
%

%   T0 = 2.5e+12;
%   Ti0 = 0;
%   V0 = 0.1;
%   T0_l = 1.05e+11;
%   Ti0_l = 0;
%   V0_l = 0.1;
% 
%   beta_u = 5.26e-11;
%   delta_u = 4.67;
%   c_u = 6.93;
%   k_u = 2.5e-4;
%   
%   beta_l = 2.2e-9;
%   delta_l = 7;
%   c_l = 26.7;
%   k_l = 5.18e-4;
%   
%   K = 563;
  
  T0 = 2e+10;
  Ti0 = 0;
  V0 = 0.1;
  T0_l = 2e+11;
  Ti0_l = 0;
  V0_l = 0.1;

  beta_u = 8.9097e-09;
  delta_u = 3.9430;
  c_u = 2.4955;
  k_u = 0.3422;
  
  beta_l = 4.8447e-10;
  delta_l = 10.9700;
  c_l = 8.4786;
  k_l = 0.0114;
  
  K = 720.78;
  

  tf = 27;
  dt = 0.1;
  tforward = 0:dt:tf;

% % % Cosntruct chains, marginal, and joint densities using DRAM.


  data.time = tforward;
  data.Y0 = [T0; Ti0; V0;T0_l; Ti0_l; V0_l];
  sigma = 5.6;


pmin = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K]';
  
 mu_par = pmin;
 
  params = {
     {'beta_u',pmin(1),1e-11, 1e-7, mu_par(1),1e-10} %initial,min,max,pri_mu,pri_sig
     {'delta_u',pmin(2),0,100, mu_par(2), 0.1}
     {'c_u',pmin(3),0,30, mu_par(3), 0.1}
     {'k_u',pmin(4),1e-4,1,mu_par(4), 1e-3}
     {'beta_l',pmin(5),1e-11, 1e-7, mu_par(5),1e-10} %initial,min,max,pri_mu,pri_sig
     {'delta_l',pmin(6),0,100, mu_par(6), 0.1}
     {'c_l',pmin(7),0,30, mu_par(7), 0.1}
     {'k_l',pmin(8),1e-4,1,mu_par(8), 1e-3}
     {'K', pmin(9),0,2000, mu_par(9),100}
     };


%   params = {
%      {'beta_u',pmin(1),1e-12, 1e-8, pmin(1),1e-12} %initial,min,max,pri_mu,pri_sig
%      {'delta_u',pmin(2),0,100, pmin(2), 0.1}
%      {'c_u',pmin(3),0,30, pmin(3), 0.1}
%      {'k_u',pmin(4),1e-8,1,pmin(4), 1e-5}
%      {'beta_l',pmin(5),1e-12, 1e-8, pmin(5),1e-11} %initial,min,max,pri_mu,pri_sig
%      {'delta_l',pmin(6),0,100, pmin(6), 0.1}
%      {'c_l',pmin(7),0,30, pmin(7), 0.1}
%      {'k_l',pmin(8),1e-8,1,pmin(8), 1e-5}
%      {'K', pmin(9),0,1000, pmin(9),10}
%      };

  model.ssfun = @Target_Cell_ss;
  model.sigma2 = sigma^2;
  options.nsimu = 1e+5;


   [results,chain,s2chain] = mcmcrun(model,data,params,options);
   
   save('Workspace_for_Patient_D')
   
%  %[results,chain,s2chain] = mcmcrun(model,data,params);
% %
% % Plot the chains, pairwise densities and marginal densities.
% %
% 
  figure(3); clf
  mcmcplot(chain,[],results,'chainpanel');
%   
  figure(4); clf
  mcmcplot(chain,[],results,'pairs');
% 
  figure(5); clf
  mcmcplot(chain,[],results,'denspanel',1);
  
%  figure(6); clf
%   mcmcplot(chain,[],results,'dens',1);
  
  figure(7); clf
  mcmcplot(chain,[],results,'hist',20);


%Construct and plot predictions intervals


% [t,Yout] = ode45(@Target_Cell_rhs,tforward,data.Y0,ode_options,mean(chain));
% 
% figure(8)
% hold on
% plot(u_time,data_swap,'ro')
% plot(t,log10(Yout(:,3)),'-k')
% hold off
% legend({'data','model'},'Location','best')
%   set(gca,'Fontsize',22);
%   xlabel('Time')
%   ylabel('Viral RNA copies log scale')
% 
%  figure(9)
% hold on
% plot(l_time,data_sputum,'ro')
% plot(t,log10(Yout(:,6)),'-k')
% hold off
% legend({'data','model'},'Location','best')
%   set(gca,'Fontsize',22);
%   xlabel('Time')
%   ylabel('Viral RNA copies log scale')
  
  
  
