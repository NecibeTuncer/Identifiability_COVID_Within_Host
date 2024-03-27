%   Bayesian Approach for parameter distribution based on Wolfer data--- 
%

%   clear all
%   close all
%   clc

%addpath 'C:\Users\stanca\Dropbox\Within_Host_Models_MCMC\mcmcstat-master'
addpath '/Users/necibetuncer/Documents/Research/Within_Host_COVID_19/MatlabCode/mcmcstat-master'


data.A_sputum =[
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

data.B_sputum =[
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

data.C_sputum =[
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

data.D_sputum =[
6.921649843
5.852208671
6.446543227
4.647333598
5.191759376
4.395487772
3.954902507
3.059574972];

data.E_sputum =[
8.448438684
7.587548443
7.347766256
6.915410627
6.260292919
6.952845925
7.271045954
5.177788896
5.193386936
3.929945642
4.388528038
3.143804392
4.438441768
2.551078846
5.293214397
3.496320111
2.161127829
2.04258272
4.101524089
3.627343653];

data.F_sputum = [
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

data.G_sputum = [
7.180577318
6.597210597
5.761155617
5.957690929
8.241244084
4.507073147
5.945212497
4.725445716
4.254384888
8.122698975
5.03740653
5.193386936
2.507404332
2.797527889
2.073778801
3.193718122];

data.H_sputum = [
6.444349799
4.257504496
4.753522189
4.070328008
3.171880865
2.622829833
2.816245537];

data.I_sputum = [
5.049884962
4.756641797
2.632188657];


data.A_swap = [7.85597248
3.966384442
2.507404332
3.125999715
3.705333856
2.676008524
2.179845478
4.013259476
3.111048506];

data.B_swap = [
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

data.C_swap = [
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

data.D_swap = [
6.44123019
5.005395032
2.826517334
3.612206046
2.894235741
2.693287157
2.682102388
3.16252204];

data.E_swap = [
8.825761771
5.650055797
5.447255864
5.374324208
4.95317711
3.252990676
2.956627904
2.529241589
3.146924
3.561831882
3.125086743
3.143804392
3.171880865
3.48072207];


data.F_swap = [
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

data.G_swap = [
5.917136024
4.235667239
7.152500845
3.549353449
7.820096986
5.726839927
3.730290721
4.13272017
6.697038057
4.402566274
2.167367045
5.729959536
1.983310165
3.084531837
5.636371292
3.078292621
2.432533737
2.257835681];

data.H_swap = [
4.098404481
5.042085942
5.322850674
4.759761406
4.91886142
4.775359446
3.674137775
2.519882765
1.849167016];

data.I_swap = [
3.692855423
2.942589667
1.661990528];    

% time is the days post symptoms onset
% incubation period for patient A is 2.5 - 3 days

data.A_u_time = [4 5 7 8 9 10 11 12 14]' + 2.5;
data.A_l_time = [4:1:22]' + 2.5;

 % incubation period for patient B is 4 days

data.B_u_time = [3 4 5 6 7 8 9 10 13 14]' + 4;
data.B_l_time = [3:1:20]' + 4;

% incubation period for patient C is 1 days

data.C_u_time = [3 5 6 7 8 9 11 12 13 16 18 19 20]' + 1;
data.C_l_time = [3 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 21 22]' + 1;

% incubation period for patient D is 4 days

data.D_u_time = [4 5 6 7 8 9 12 13]' + 4;
data.D_l_time = [4 6 7 8 9 10 11 13]' + 4;

% incubation period for patient E is 4 days

data.E_u_time = [4 5 6 7 8 9 10 11 13 14 15 16 17 19]' + 4;
data.E_l_time = [4 6 7 8 9 10 11 12 13 14 15 16 18 19 20 22 23 25 26 27]' + 4;

% incubation period for patient F is 4 days

data.F_u_time = [6 7 8 9 10 11 12 13 14 15 18 19]' + 4;
data.F_l_time = [6 7 8 9 10 11 13 14 16 18 19 20 21 22]' + 4;

% incubation period for patient G is 2 days

data.G_u_time = [4 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21  24 26]' + 2;
data.G_l_time = [4 6 7 8 11 12 13 14 17 18 19 20 21 22 23 26]' + 2;

% incubation period for patient H is 4.5 days

data.H_u_time = [2 3 5 6 7 8 9 11 12]' + 4.5;
data.H_l_time = [2 3 4 5 6 7 8]' + 4.5;

% incubation period for patient I is 7 days

data.I_u_time = [8 9 10]' + 7;
data.I_l_time = [8 9 11]' + 7;
%
% Set parameters and initial conditions
%

  T0 = 2e+10;
  Ti0 = 0;
  V0 = 0.1;
  T0_l = 2e+11;
  Ti0_l = 0;
  V0_l = 0.1;
  
  beta_u = -18.5361;
  delta_u = 4.6386;
  c_u = 4.2633;
  k_u = -0.4743;
  
  beta_l = -23.0981;
  delta_l = 2.9858;
  c_l = 9.2103;
  k_l=-3.3270;
%   beta_u = 8.9097e-09;
%   delta_u = 4.6386;
%   c_u =4.2633;
%   k_u = 0.6223;
%   
%   beta_l = 9.3029e-11;
%   delta_l = 2.9858;
%   c_l = 9.2103;
%   k_l = 0.0359;
  
  K = 1840;

  tf = 32;
  dt = 0.1;
  tforward = 0:dt:tf;

% % % Cosntruct chains, marginal, and joint densities using DRAM.
  data.time = tforward;
  data.Y0 = [T0; Ti0; V0;T0_l; Ti0_l; V0_l];
  sigma = 5.62;


  pmin = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K]';
  mu_par = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K];
  
  %NT new min max for log values
   params = {
     {'beta_u',pmin(1),-25, -14, mu_par(1),1} %initial,min,max,pri_mu,pri_sig
     {'delta_u',pmin(2),0,50, mu_par(2), 1}
     {'c_u',pmin(3),0,30, mu_par(3), 1}
     {'k_u',pmin(4),-4,0,mu_par(4), 1}
     {'beta_l',pmin(5),-30, -15, mu_par(5),1} %initial,min,max,pri_mu,pri_sig
     {'delta_l',pmin(6),0,50, mu_par(6), 1}
     {'c_l',pmin(7),0,30, mu_par(7), 1}
     {'k_l',pmin(8),-7,1,mu_par(8), 1}
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
%      {'K', pmin(9),0,3000, mu_par(9),100}
%      };
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
  
%   mu_par = [8.1e-11;4.34;3.9;1e-4;9.6e-10;10.9;7.8;1e-4;6.3];
%  
%   params = {
%      {'beta_u',pmin(1),1e-12, 1e-8, mu_par(1),1e-12} %initial,min,max,pri_mu,pri_sig
%      {'delta_u',pmin(2),0,100, mu_par(2), 0.1}
%      {'c_u',pmin(3),0,30, mu_par(3), 0.1}
%      {'k_u',pmin(4),1e-8,1,mu_par(4), 1e-5}
%      {'beta_l',pmin(5),1e-12, 1e-8, mu_par(5),1e-11} %initial,min,max,pri_mu,pri_sig
%      {'delta_l',pmin(6),0,100, mu_par(6), 0.1}
%      {'c_l',pmin(7),0,30, mu_par(7), 0.1}
%      {'k_l',pmin(8),1e-8,1,mu_par(8), 1e-5}
%      {'K', pmin(9),0,1000, mu_par(9),10}
%      };

  model.ssfun = @Target_Cell_All_Patients_ss;
  model.sigma2 = sigma^2;
  options.nsimu = 1e+6;


   [results,chain,s2chain] = mcmcrun(model,data,params,options);
   
save('Workspace_for_All_Patients_log_NT')
   

  
