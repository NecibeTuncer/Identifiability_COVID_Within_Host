%prediction plot

% clear all
% close all
% clc

load('Workspace_for_All_Patients1_log.mat')
 
%load('Workspace_for_Patient_C.mat')
%addpath '/Users/necibetuncer/Documents/Research/Within_Host_COVID_19/MatlabCode/mcmcstat-master'

% data_mean_swap =[
% 6.22576422
% 5.098389791
% 5.874859606
% 5.659059446
% 4.950868509
% 4.608604786
% 4.055533965
% 4.250290402
% 3.864595712
% 3.434690076
% 3.705150739
% 3.361241079
% 2.67898278
% 2.658705327
% 3.630463261
% 2.785049456
% 2.970146205
% 4.039131926
% 3.240512244
% 2.432533737
% 2.257835681];
% 
% data_std_swap = [
%     0
% 1.157882026
% 2.198160149
% 1.928809906
% 0.501201485
% 1.569609911
% 0.779773196
% 1.659588163
% 1.221311863
% 0.720836695
% 0.682905587
% 1.898851684
% 1.003934478
% 0.617895075
% 1.508800659
% 0.695602664
% 0.277230034
% 2.258837573
% 0.212248014
% 0
% 0]
% 
% data_mean_sputum = [
% 6.372598811
% 6.545087008
% 5.089236019
% 6.854575426
% 6.283296106
% 6.430791756
% 6.208925511
% 5.171251444
% 5.58979598
% 5.073400802
% 4.839241193
% 4.250745345
% 3.867033544
% 3.733930264
% 4.165164095
% 4.558546681
% 4.399966601
% 4.069808073
% 3.275347868
% 3.483841678
% 3.271708325
% 3.335660292
% 2.161127829
% 3.193718122
% 2.04258272
% 4.101524089
% 3.627343653];
% 
% data_std_sputum = [
% 0.00
% 0.898719016
% 1.426941428
% 1.722822223
% 1.596725258
% 1.452960398
% 1.566637058
% 1.527965901
% 1.568907887
% 1.044116897
% 1.442039922
% 0.764851108
% 1.062229853
% 0.684497523
% 0.548468455
% 1.886633927
% 0.555731141
% 1.053218547
% 1.179400715
% 1.125381069
% 1.141968341
% 0.227207295
% 0
% 0
% 0
% 0
% 0];

% data_u_time = [4 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 26 29]';
% data_l_time = [4 6:31]';
[u_predictions,l_predictions,u_prediction_quartiles,l_prediction_quartiles] = plot_results(chain, 1000,data.Y0);

  dimc = [0.9 0.9 0.9];
  t_time = 0:0.1:32;
  mean_chain_pred = TIVmodel(t_time,mean(chain),data.Y0);
  figure(1); 
subplot(2,2,3)
  fillyy(t_time,u_prediction_quartiles(1,:),u_prediction_quartiles(5,:),dimc);
  hold on 
  fillyy(t_time,u_prediction_quartiles(2,:),u_prediction_quartiles(4,:),dimc.*0.9);
  hold on
  plot(data.A_u_time,data.A_swap,'.k','MarkerSize',8)
  plot(data.B_u_time,data.B_swap,'.k','MarkerSize',8)
  plot(data.C_u_time,data.C_swap,'.k','MarkerSize',8)
  plot(data.D_u_time,data.D_swap,'.k','MarkerSize',8)
  plot(data.E_u_time,data.E_swap,'.k','MarkerSize',8)
  plot(data.F_u_time,data.F_swap,'.k','MarkerSize',8)
  plot(data.G_u_time,data.G_swap,'.k','MarkerSize',8)
  plot(data.H_u_time,data.H_swap,'.k','MarkerSize',8)
  plot(data.I_u_time,data.I_swap,'.k','MarkerSize',8)
  hold on
   plot(t_time,median(u_predictions,1),'k','LineWidth',1)
  %plot(t_time,mean_chain_pred(:,1),'k','LineWidth',1.5)
  set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
  xlabel('Time (days)','FontSize',12,'FontName','Arial','FontWeight','normal');
  ylabel('log_{10}V_u','FontSize',12,'FontName','Arial','FontWeight','normal');
  hold off
  
  %figure(2); 
  subplot(2,2,4)
  fillyy(t_time,l_prediction_quartiles(1,:),l_prediction_quartiles(5,:),dimc);
  hold on 
  fillyy(t_time,l_prediction_quartiles(2,:),l_prediction_quartiles(4,:),dimc.*0.9);
  hold on
  plot(data.A_l_time,data.A_sputum,'.k','MarkerSize',8)
  plot(data.B_l_time,data.B_sputum,'.k','MarkerSize',8)
  plot(data.C_l_time,data.C_sputum,'.k','MarkerSize',8)
  plot(data.D_l_time,data.D_sputum,'.k','MarkerSize',8)
  plot(data.E_l_time,data.E_sputum,'.k','MarkerSize',8)
  plot(data.F_l_time,data.F_sputum,'.k','MarkerSize',8)
  plot(data.G_l_time,data.G_sputum,'.k','MarkerSize',8)
  plot(data.H_l_time,data.H_sputum,'.k','MarkerSize',8)
  plot(data.I_l_time,data.I_sputum,'.k','MarkerSize',8)
  hold on
  plot(t_time,median(l_predictions,1),'k','LineWidth',1)
  %plot(t_time,mean_chain_pred(:,2),'k','LineWidth',1.5)
  set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
  xlabel('Time (days)','FontSize',12,'FontName','Arial','FontWeight','normal');
  ylabel('log_{10}V_l','FontSize',12,'FontName','Arial','FontWeight','normal');
  hold off
  
% out = mcmcpred(results,chain,s2chain,t,@TIVmodel,[],data.Y0);
% mcmcpredplot(out);

% load('Workspace_for_Patient_B.mat')
% 
% figure(2); 
% out = mcmcpred(results,chain,s2chain,t,@TIVmodel,1000,data.Y0);
% mcmcpredplot(out);

function [u_predictions,l_predictions,u_prediction_quartiles,l_prediction_quartiles] = plot_results(chain,sample_term,Y0)

%pmin = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K]'; remember the
%order

beta_u =  chain(sample_term:sample_term:end,1);
delta_u =  chain(sample_term:sample_term:end,2);
c_u =  chain(sample_term:sample_term:end,3);
k_u =  chain(sample_term:sample_term:end,4);
beta_l =  chain(sample_term:sample_term:end,5);
delta_l =  chain(sample_term:sample_term:end,6);
c_l =  chain(sample_term:sample_term:end,7);
k_l =  chain(sample_term:sample_term:end,8);
K =  chain(sample_term:sample_term:end,9);

n = length(beta_u);


t_time = 0:0.1:32;

%quartile_limits =  [0.005,0.025,0.05,0.25,0.5,0.75,0.95,0.975,0.995];

quartile_limits =  [0.05,0.25,0.5,0.75,0.95];

m = length(quartile_limits);

u_predictions = zeros(n,length(t_time));
l_predictions = zeros(n,length(t_time));
u_prediction_quartiles = zeros(m,length(t_time));
l_prediction_quartiles = zeros(m,length(t_time));
  for i = 1:n
      
      params = [beta_u(i) delta_u(i) c_u(i) k_u(i) beta_l(i) delta_l(i) c_l(i) k_l(i) K(i)];
      
      m_predic = TIVmodel(t_time,params,Y0);
      
      u_predictions(i,:) =  m_predic(:,1);
      l_predictions(i,:) =  m_predic(:,2);
      
  end
  
  clear i
  clear j
  
    for i = 1:m
  
  p = quartile_limits(i);
  
        for j = 1:length(t_time)
          
            
            u_prediction_quartiles(i,j) = interp1(sort(u_predictions(:,j)),(n-1)*p+1);
            l_prediction_quartiles(i,j) = interp1(sort(l_predictions(:,j)),(n-1)*p+1);
             
        end
    end

end

function out = fillyy(x,y1,y2,col)

%FILLYY  Fills space between lines
% fillyy(x,y1,y2,col) fill space between lines (x,y1) and (x,y2)
%  with color col


    if nargin < 4
        col='red';
    end

x  = x(:)';
y1 = y1(:)';
y2 = y2(:)';
n   = length(x);
X = [ x(1),  x,  x(n),  fliplr(x)  ];
Y = [ y1(1), y2, y1(n), fliplr(y1) ];
h = fill(X,Y,col,'Linestyle','none');

    if nargout>0
        out=h;
    end
end