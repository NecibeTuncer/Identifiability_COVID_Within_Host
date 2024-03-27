%   Bayesian Approach for parameter distribution based on Wolfer data--- 
%

  clear all
  close all
  clc

addpath 'C:\Users\stanca\Dropbox\Within_Host_Models_MCMC\mcmcstat-master'
%addpath '/Users/necibetuncer/Documents/Research/Within_Host_COVID_19/MatlabCode/mcmcstat-master'


data.sputum =[
6.185422323
8.430640734
8.653212514
7.774953645
7.16032049
5.155931755
5.682789182
4.442902939
4.166474103
3.16252204
3.312263231
3.527516192
3.795802492
5.202745761
4.145198603
3.511918152
3.103249486
3.792682884
3.393373042];

data.swap = [7.85597248
3.966384442
2.507404332
3.125999715
3.705333856
2.676008524
2.179845478
4.013259476
3.111048506];

% time is the days post symptoms onset
% incubation period for patient A is 2.5 days

data.u_time = [4 5 7 8 9 10 11 12 14]' + 2.5;
data.l_time = [4:1:22]' + 2.5;

 

%
% Set parameters and initial conditions
%

  T0 = 2e+10;
  Ti0 = 0;
  V0 = 0.1;
  T0_l = 2e+11;
  Ti0_l = 0;
  V0_l = 0.1;

%   beta_u = -18.3117;
  beta_u = 1.1151e-08;
  delta_u = 4.8878;
  c_u = 2.8800;
%   k_u = -1.4351;
k_u = 0.2381;
  
%   beta_l = -21.6298;
  beta_l = 4.0392e-10;
  delta_l = 5.6906;
  c_l = 11.4269;
  %k_l=-7.1470;
  k_l = 7.8726e-04;
  
  K = 909;
  

  tf = 27;
  dt = 0.1;
  tforward = 0:dt:tf;

% % % Cosntruct chains, marginal, and joint densities using DRAM.


  data.time = tforward;
  data.Y0 = [T0; Ti0; V0;T0_l; Ti0_l; V0_l];
  sigma = 5.62;


  pmin = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K]';
  % % betaU=1.1151e-08;
% % betaL=4.0392e-10;
% % deltaU=4.8878;
% % deltaL=5.6906;
% % cU=2.8800;
% % cL=11.4269;
% % phiU=0.2381;
% % phiL=7.8726e-04;
% % K=909
  mu_par = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K];
  
    params = {
     {'beta_u',pmin(1),1e-12, 1e-7, mu_par(1),1e-8} %initial,min,max,pri_mu,pri_sig
     {'delta_u',pmin(2),0,50, mu_par(2), 0.5}
     {'c_u',pmin(3),0,30, mu_par(3), 0.5}
     {'k_u',pmin(4),1e-6,1,mu_par(4), 0.1}
     {'beta_l',pmin(5),1e-12, 1e-7, mu_par(5),1e-10} %initial,min,max,pri_mu,pri_sig
     {'delta_l',pmin(6),0,50, mu_par(6), 0.5}
     {'c_l',pmin(7),0,30, mu_par(7), 0.5}
     {'k_l',pmin(8),1e-6,1,mu_par(8), 1e-4}
     {'K', pmin(9),0,3000, mu_par(9),100}
     };

 
%   params = {
%      {'beta_u',pmin(1),-20, -16, mu_par(1),1} %initial,min,max,pri_mu,pri_sig
%      {'delta_u',pmin(2),0,50, mu_par(2), 1}
%      {'c_u',pmin(3),0,30, mu_par(3), 1}
%      {'k_u',pmin(4),-3,1,mu_par(4), 1}
%      {'beta_l',pmin(5),-23, -19, mu_par(5),1} %initial,min,max,pri_mu,pri_sig
%      {'delta_l',pmin(6),0,50, mu_par(6), 1}
%      {'c_l',pmin(7),0,30, mu_par(7), 1}
%      {'k_l',pmin(8),-9,-2,mu_par(8), 1}
%      {'K', pmin(9),0,2000, mu_par(9),100}
%      };

%NT new min max for log values
%   params = {
%      {'beta_u',pmin(1),-25, -14, mu_par(1),1} %initial,min,max,pri_mu,pri_sig
%      {'delta_u',pmin(2),0,50, mu_par(2), 1}
%      {'c_u',pmin(3),0,30, mu_par(3), 1}
%      {'k_u',pmin(4),-7,4,mu_par(4), 1}
%      {'beta_l',pmin(5),-30, -15, mu_par(5),1} %initial,min,max,pri_mu,pri_sig
%      {'delta_l',pmin(6),0,50, mu_par(6), 1}
%      {'c_l',pmin(7),0,30, mu_par(7), 1}
%      {'k_l',pmin(8),-11,-2,mu_par(8), 1}
%      {'K', pmin(9),0,2000, mu_par(9),100}
%      };
 

%  params = {
%      {'beta_u',pmin(1),-25, -14} %initial,min,max,pri_mu,pri_sig
%      {'delta_u',pmin(2),0,50}
%      {'c_u',pmin(3),0,30}
%      {'k_u',pmin(4),-7,4}
%      {'beta_l',pmin(5),-30, -15} %initial,min,max,pri_mu,pri_sig
%      {'delta_l',pmin(6),0,50}
%      {'c_l',pmin(7),0,30}
%      {'k_l',pmin(8),-11,-2}
%      {'K', pmin(9),0,2000}
%      };
 
  model.ssfun = @Target_Cell_ss;
  model.sigma2 = sigma^2;
  options.nsimu = 1e+4;


   [results,chain,s2chain] = mcmcrun(model,data,params,options);
   
  save('Workspace_for_Nora_test')
   
%  %[results,chain,s2chain] = mcmcrun(model,data,params);
% %
% % Plot the chains, pairwise densities and marginal densities.
% %

%   figure(3); clf
%   mcmcplot(chain,[],results,'chainpanel');
% %   
%   figure(4); clf
%   mcmcplot(chain,[],results,'pairs');
% % 
%   figure(5); clf
%   mcmcplot(chain,[],results,'denspanel',1);
%   
% %  figure(6); clf
% %   mcmcplot(chain,[],results,'dens',1);
%   
%   figure(7); clf
%   mcmcplot(chain,[],results,'hist',20);

% 
% Construct and plot predictions intervals
%

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
%   
  
  
