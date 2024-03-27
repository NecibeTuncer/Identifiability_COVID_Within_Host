%   Bayesian Approach for parameter distribution based on Wolfer data--- 
%

  clear all
  close all
  clc

addpath 'C:\Users\stanca\Dropbox\Within_Host_Models_MCMC\mcmcstat-master'
%addpath '/Users/necibetuncer/Documents/Research/Within_Host_COVID_19/MatlabCode/mcmcstat-master'


data.sputum = [
7.930346332
7.480236844
7.024596912
5.42111833
5.938973281
5.848504645
2.541720022
3.486961286
3.505678935
4.603780999
5.58957717
2.451251386
4.347973132
3.175000473];

data.swap = [
5.529684975
3.776210088
3.660099538
3.493200503
3.271708325
4.157677036
1.964592517
3.284186758
2.4949259
3.502559327
2.441892561
3.16252204];

% time is the days post symptoms onset
% incubation period for patient B is 4 days

data.u_time = [6 7 8 9 10 11 12 13 14 15 18 19]' + 4;
data.l_time = [6 7 8 9 10 11 13 14 16 18 19 20 21 22]' + 4;

 

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
  
  T0 = 2.5e+10;
  Ti0 = 0;
  V0 = 0.1;
  T0_l = 2e+11;
  Ti0_l = 0;
  V0_l = 0.1;

  beta_u = 7.1370e-09;
  delta_u = 4.4635;
  c_u = 2.1182;
  k_u = 0.0725;
  
  beta_l = 4.6562e-10;
  delta_l = 10.7576;
  c_l = 9.1770;
  k_l = 0.0061;
  
  K = 705;
  

  tf = 32;
  dt = 0.1;
  tforward = 0:dt:tf;

% % % Cosntruct chains, marginal, and joint densities using DRAM.


  data.time = tforward;
  data.Y0 = [T0; Ti0; V0;T0_l; Ti0_l; V0_l];
  sigma = 5.6;


  pmin = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K]';
  

  %mu_par = [8.1e-11;4.34;3.9;1e-4;9.6e-10;10.9;7.8;1e-4;6.3];
 
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
   
   save('Workspace_for_Patient_F')
   
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
  
  
  
