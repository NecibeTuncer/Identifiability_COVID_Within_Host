%   Bayesian Approach for parameter distribution based on Wolfer data--- 
%

  clear all
  close all
  clc

%addpath '/Users/necibetuncer/Documents/Research/Within_Host_COVID_19/MatlabCode/mcmcstat-master'
addpath 'C:\Users\stanca\Dropbox\Within_Host_Models_MCMC\mcmcstat-master'

data.sputum =[
6.372598811
5.909596698
3.68180081
4.946372386
5.144953271
4.895520442
5.070638817
4.354212348
4.588182958
4.045371143
3.240512244
4.020414278
4.201351549
4.235667239
3.483841678
3.851955438
2.223519992
3.299784798];

data.swap = [
6.225764227
4.279643559
3.849748803
3.540907597
4.912622204
3.552473057
3.259229893
2.990943593
4.444680984
1.187810091
2.164247437
3.228033811
2.654025914];

% time is the days post symptoms onset
% incubation period for patient B is 4 days

data.u_time = [3 5 6 7 8 9 11 12 13 16 18 19 20]' + 1;
data.l_time = [3 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 21 22]' + 1;

 

%
% Set parameters and initial conditions
%

%   T0 = 2.5e+12;
%   Ti0 = 0;
%   V0 = 0.1;
%   T0_l = 1.05e+11;
%   Ti0_l = 0;
%   V0_l = 0.1;
% betaU=1.5643e-08;
% betaL=2.7562e-11;
% deltaU=3.7212;
% deltaL=2.0446;
% cU=3.4356;
% cL=6.3076;
% phiU=0.1124;
% phiL=0.0211;
% K=5.3268e+03;
  beta_u = 1.5643e-08;
  delta_u = 3.7212;
  c_u = 3.4356;
  k_u = 0.1124;
  
  beta_l = 2.7562e-11;
  delta_l = 2.0446;
  c_l = 6.3076;
  k_l = 0.0211;
  
  K = 5.3268e+03;
  
  T0 = 2e+10;
  Ti0 = 0;
  V0 = 0.1;
  T0_l = 2e+11;
  Ti0_l = 0;
  V0_l = 0.1;

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
  sigma = 5.43;


  pmin = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K]';
  

%   mu_par = [8.1e-11;4.34;3.9;1e-4;9.6e-10;10.9;7.8;1e-4;6.3];
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
     {'K', pmin(9),0,10000, mu_par(9),1000}
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
   
   save('Workspace_for_Patient_C')
   

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
  
  
  
