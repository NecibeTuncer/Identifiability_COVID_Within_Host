%   Bayesian Approach for parameter distribution based on Wolfer data--- 
%

  clear all
  close all
  clc

addpath 'C:\Users\stanca\Dropbox\Within_Host_Models_MCMC\mcmcstat-master'


data.sputum =[
4.045371143
8.380211242
7.10363694
7.377737581
6.785092075
5.478445038
6.516735454
5.231151406
3.237392636
3.661659342
4.893904555
4.591302566
4.90326338
3.524396584
4.017294669
4.447800592
2.600992576
3.084531837];

data.swap = [
7.695312661
6.137986733
4.950602274
4.530151209
4.190882845
2.791288672
5.308135872
3.785539344
2.304629803
2.41069648];

% time is the days post symptoms onset
% incubation period for patient B is 4 days

data.u_time = [3 4 5 6 7 8 9 10 13 14]' + 4;
data.l_time = [3:1:20]' + 4;

 

%
% Set parameters and initial conditions
%

% % betaU=1.1471e-08;
% % betaL=3.3096e-10;
% % deltaU=1.8005;
% % deltaL=7.8912;
% % cU=3.0896;
% % cL=7.0746;
% % phiU=0.0836;
% % phiL=0.0013;
% % K=440.0906;
% % SSQ=6.16;

  beta_u = 1.1471e-08;
  delta_u = 1.8005;
  c_u = 3.0896;
  k_u = 0.0836;
  
  beta_l = 3.3096e-10;
  delta_l = 7.8912;
  c_l = 7.0746;
  k_l = 0.0013;
  
  K = 440.0906;
  
  T0 = 2e+10;
  Ti0 = 0;
  V0 = 0.1;
  T0_l = 2e+11;
  Ti0_l = 0;
  V0_l = 0.1;
%   
%    beta_u = 5.26e-11;
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
%   
%   T0 = 2.5e+12;
%   Ti0 = 0;
%   V0 = 0.1;
%   T0_l = 1.05e+11;
%   Ti0_l = 0;
%   V0_l = 0.1;

%   beta_u = 8.1e-11;
%   delta_u = 4.34;
%   c_u = 3.9;
%   k_u = 1e-4;
%   
%   beta_l = 9.6e-10;
%   delta_l = 10.9;
%   c_l = 7.8;
%   k_l = 1e-4;
%   
%   K = 6.3;
  

  tf = 27;
  dt = 0.1;
  tforward = 0:dt:tf;

% % % Cosntruct chains, marginal, and joint densities using DRAM.


  data.time = tforward;
  data.Y0 = [T0; Ti0; V0;T0_l; Ti0_l; V0_l];
  sigma = 5.7;


  pmin = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K]';
  

  mu_par = pmin;
 
  params = {
     {'beta_u',pmin(1),1e-10, 1e-7, mu_par(1),1e-11} %initial,min,max,pri_mu,pri_sig
     {'delta_u',pmin(2),0,100, mu_par(2), 0.1}
     {'c_u',pmin(3),0,30, mu_par(3), 0.1}
     {'k_u',pmin(4),1e-4,1,mu_par(4), 1e-5}
     {'beta_l',pmin(5),1e-12, 1e-8, mu_par(5),1e-11} %initial,min,max,pri_mu,pri_sig
     {'delta_l',pmin(6),0,100, mu_par(6), 0.1}
     {'c_l',pmin(7),0,30, mu_par(7), 0.1}
     {'k_l',pmin(8),1e-8,1,mu_par(8), 1e-5}
     {'K', pmin(9),0,2000, mu_par(9),2000}
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
   
   save('Workspace_for_Patient_B')
   
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


[t,Yout] = ode45(@Target_Cell_rhs,tforward,data.Y0,ode_options,mean(chain));

figure(8)
hold on
plot(u_time,data_swap,'ro')
plot(t,log10(Yout(:,3)),'-k')
hold off
legend({'data','model'},'Location','best')
  set(gca,'Fontsize',22);
  xlabel('Time')
  ylabel('Viral RNA copies log scale')

 figure(9)
hold on
plot(l_time,data_sputum,'ro')
plot(t,log10(Yout(:,6)),'-k')
hold off
legend({'data','model'},'Location','best')
  set(gca,'Fontsize',22);
  xlabel('Time')
  ylabel('Viral RNA copies log scale')
  
  
  
