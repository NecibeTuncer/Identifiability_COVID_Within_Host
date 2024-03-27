%histogram graphs 

% clear all
% close all
% clc
% 
%load('Workspace_for_Patient_A_NT.mat')
%load('Workspace_for_All_Patients.mat')
%load('Workspace_for_All_Patients_log_NT.mat')
 %load('Workspace_for_All_Patients_log_NT.mat')
%load('Workspace_for_Experiment1_log_params_March10')
load('Workspace_for_Experiment2_log_params_March12')
 
 % load('Workspace_for_Experiment1_log_params_March10')
  %load('Workspace_for_Experiment2_log_params_March12')
  
%mu and sigma for prior distribution

% mu_par = [8.1e-11;4.34;3.9;1e-4;9.6e-10;10.9;7.8;1e-4;6.3];
% sigma_par = [1e-12; 0.1; 0.1; 1e-5; 1e-11; 0.1; 0.1; 1e-5; 10];
% 
% PriorMdl.Mu = mu_par;
% PriorMdl.V = diag(sigma_par);
% PriorMdl.B = 0.01;
% PriorMdl = bayeslm(9,'ModelType','conjugate');
% plot(PriorMdl);
pdf_norm = @(x1,mu,sigma) ...
    normpdf(x1,mu,sigma);

pdf_truncnorm = @(x2,mu,sigma,xTrunc) ...
    normpdf(x2,mu,sigma)./normcdf(xTrunc,mu,sigma);

pdf_normmixture = @(x3,p,mu1,mu2,sigma1,sigma2) ...
    p*normpdf(x3,mu1,sigma1) + (1-p)*normpdf(x3,mu2,sigma2);

figure(2)
subplot(2,2,1)
%subplot(3,3,1)
h = histogram(chain(:,1),'Normalization','pdf'); 
hold on
h(1).FaceColor = [.8 .8 1];
h.NumBins = 50;
%paramEst_mu_sigma = mle(chain(:,1),'Distribution','');
xgrid = linspace(min(chain(:,1)),max(chain(:,1)));
%pdfgrid = pdf_norm(xgrid,paramEst_mu_sigma(1),paramEst_mu_sigma(2));
%hold on
%plot(xgrid,pdfgrid,'-','LineWidth',2,'Color',[.2 .2 .2])
prior_pdf = normpdf(xgrid,results.prior(1,1),results.prior(1,2));
plot(xgrid,prior_pdf,'LineWidth',1,'Color',[.5 0 0])
ylabel('Probability Density')
legend('\beta_u','Prior pdf','Location','best')
%hold off
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_u','FontSize',13.2,'FontName','Arial','FontWeight','normal');

%figure(2)
% subplot(3,3,2)
% h = histogram(chain(:,2),'Normalization','pdf'); 
% hold on
% h(1).FaceColor = [.8 .8 1];
% h.NumBins = 50;
% %paramEst_mu_sigma = mle(chain(:,2),'Distribution','Normal');
% xgrid = linspace(min(chain(:,2)),max(chain(:,2)));
% %pdfgrid = pdf_norm(xgrid,paramEst_mu_sigma(1),paramEst_mu_sigma(2));
% hold on
% %plot(xgrid,pdfgrid,'-','LineWidth',2,'Color',[.2 .2 .2])
% prior_pdf = normpdf(xgrid,results.prior(2,1),results.prior(2,2));
% plot(xgrid,prior_pdf,'LineWidth',1,'Color',[.5 0 0])
% %ylabel('Probability Density')
% % legend('\delta_u','Fitted pdf','Prior pdf','Location','best')
% legend('\delta_u','Prior pdf','Location','best')
% %hold off
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_u','FontSize',13.2,'FontName','Arial','FontWeight','normal');
% 
% %figure(3)
% subplot(3,3,3)
% h = histogram(chain(:,3),'Normalization','pdf'); 
% hold on
% h(1).FaceColor = [.8 .8 1];
% h.NumBins = 50;
% %paramEst_mu_sigma = mle(chain(:,3),'Distribution','Normal');
% xgrid = linspace(min(chain(:,3)),max(chain(:,3)));
% %pdfgrid = pdf_norm(xgrid,paramEst_mu_sigma(1),paramEst_mu_sigma(2));
% hold on
% %plot(xgrid,pdfgrid,'-','LineWidth',2,'Color',[.2 .2 .2])
% prior_pdf = normpdf(xgrid,results.prior(3,1),results.prior(3,2));
% plot(xgrid,prior_pdf,'LineWidth',1,'Color',[.5 0 0])
% %ylabel('Probability Density')
% legend('c_u','Prior pdf','Location','best')
% %hold off
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_u','FontSize',13.2,'FontName','Arial','FontWeight','normal');
% 
% %figure(4)
% subplot(3,3,4)
% h = histogram(chain(:,4),'Normalization','pdf'); 
% %xTrunc = 1; %cut off value on the right
% hold on
% h(1).FaceColor = [.8 .8 1];
% h.NumBins = 50;
% %paramEst_mu_sigma = mle(chain(:,4),'Distribution','Normal', 'TruncationBounds',[-Inf xTrunc]);
% xgrid = linspace(min(chain(:,4)),max(chain(:,4)));
% %pdfgrid = pdf_truncnorm(xgrid,paramEst_mu_sigma(1),paramEst_mu_sigma(2),xTrunc);
% hold on
% %plot(xgrid,pdfgrid,'-','LineWidth',2,'Color',[.2 .2 .2])
% prior_pdf = normpdf(xgrid,results.prior(4,1),results.prior(4,2));
% plot(xgrid,prior_pdf,'LineWidth',1,'Color',[.5 0 0])
% ylabel('Probability Density')
% legend('k_u','Prior pdf','Location','best')
% %hold off
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('k_u','FontSize',13.2,'FontName','Arial','FontWeight','normal');

%figure(5)
subplot(2,2,2)
%subplot(3,3,5)
h = histogram(chain(:,5),'Normalization','pdf');
hold on
h(1).FaceColor = [.8 .8 1];
h.NumBins = 50;
% lb = [0 -Inf -Inf 0 0];
% ub = [1 Inf Inf Inf Inf];
%paramEsts = mle(chain(:,5),'pdf',pdf_normmixture,'Start',[0.5 mean(chain(5)),mean(chain(5)),sqrt(var(chain(:,5))),sqrt(var(chain(:,5)))], ...
 %   'LowerBound',lb,'UpperBound',ub,'Options',statset('MaxIter',900,'MaxFunEvals',900))
xgrid = linspace(min(chain(:,5)),max(chain(:,5)));
%pdfgrid = pdf_normmixture(xgrid, ...
 %   paramEsts(1),paramEsts(2),paramEsts(3),paramEsts(4),paramEsts(5));
%plot(xgrid,pdfgrid,'-','LineWidth',2,'Color',[.2 .2 .2])
prior_pdf = normpdf(xgrid,results.prior(5,1),results.prior(5,2));
plot(xgrid,prior_pdf,'LineWidth',1,'Color',[.5 0 0])
%ylabel('Probability Density')
legend('\beta_l','Prior pdf','Location','best')
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_l','FontSize',13.2,'FontName','Arial','FontWeight','normal');

%figure(6)
% subplot(3,3,6)
% h = histogram(chain(:,6),'Normalization','pdf'); 
% hold on
% h(1).FaceColor = [.8 .8 1];
% h.NumBins = 50;
% %paramEst_mu_sigma = mle(chain(:,6),'Distribution','Normal');
% xgrid = linspace(min(chain(:,6)),max(chain(:,6)));
% %pdfgrid = pdf_norm(xgrid,paramEst_mu_sigma(1),paramEst_mu_sigma(2));
% hold on
% %plot(xgrid,pdfgrid,'-','LineWidth',2,'Color',[.2 .2 .2])
% prior_pdf = normpdf(xgrid,results.prior(6,1),results.prior(6,2));
% plot(xgrid,prior_pdf,'LineWidth',1,'Color',[.5 0 0])
% %ylabel('Probability Density')
% legend('\delta_l','Prior pdf','Location','best')
% %hold off
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_l','FontSize',13.2,'FontName','Arial','FontWeight','normal');
% 
% %figure(7)
% subplot(3,3,7)
% h = histogram(chain(:,7),'Normalization','pdf'); 
% hold on
% h(1).FaceColor = [.8 .8 1];
% h.NumBins = 50;
% %paramEst_mu_sigma = mle(chain(:,7),'Distribution','Normal');
% xgrid = linspace(min(chain(:,7)),max(chain(:,7)));
% %pdfgrid = pdf_norm(xgrid,paramEst_mu_sigma(1),paramEst_mu_sigma(2));
% hold on
% %plot(xgrid,pdfgrid,'-','LineWidth',2,'Color',[.2 .2 .2])
% prior_pdf = normpdf(xgrid,results.prior(7,1),results.prior(7,2));
% plot(xgrid,prior_pdf,'LineWidth',1,'Color',[.5 0 0])
% ylabel('Probability Density')
% legend('c_l','Prior pdf','Location','best')
% %hold off
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_l','FontSize',13.2,'FontName','Arial','FontWeight','normal');
% 
% %figure(8)
% subplot(3,3,8)
% h = histogram(chain(:,8),'Normalization','pdf'); 
% xTrunc = 2; %cut off value on the right
% hold on
% h(1).FaceColor = [.8 .8 1];
% h.NumBins = 50;
% %paramEst_mu_sigma = mle(chain(:,8),'Distribution','Normal', 'TruncationBounds',[-Inf xTrunc]);
% xgrid = linspace(min(chain(:,8)),max(chain(:,8)));
% %pdfgrid = pdf_truncnorm(xgrid,paramEst_mu_sigma(1),paramEst_mu_sigma(2),xTrunc);
% hold on
% %plot(xgrid,pdfgrid,'-','LineWidth',2,'Color',[.2 .2 .2])
% prior_pdf = normpdf(xgrid,results.prior(8,1),results.prior(8,2));
% plot(xgrid,prior_pdf,'LineWidth',1,'Color',[.5 0 0])
% %ylabel('Probability Density')
% legend('k_l','Prior pdf','Location','best')
% %hold off
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('k_l','FontSize',13.2,'FontName','Arial','FontWeight','normal');
% 
% %figure(9)
% subplot(3,3,9)
% h = histogram(chain(:,9),'Normalization','pdf'); 
% hold on
% h(1).FaceColor = [.8 .8 1];
% h.NumBins = 50;
% %paramEst_mu_sigma = mle(chain(:,9),'Distribution','Normal');
% xgrid = linspace(min(chain(:,9)),max(chain(:,9)));
% %pdfgrid = pdf_norm(xgrid,paramEst_mu_sigma(1),paramEst_mu_sigma(2));
% hold on
% %plot(xgrid,pdfgrid,'-','LineWidth',2,'Color',[.2 .2 .2])
% prior_pdf = normpdf(xgrid,results.prior(9,1),results.prior(9,2));
% plot(xgrid,prior_pdf,'LineWidth',1,'Color',[.5 0 0])
% %ylabel('Probability Density')
% legend('\delta_u','Prior pdf','Location','best')
% %hold off
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('K','FontSize',13.2,'FontName','Arial','FontWeight','normal');
% 
% %h = get(0,'children');
% 
% % for i=1:length(h)
% %     
% %    %  saveas(h(i), ['HistogramPlots_Patient_A' num2str(i)], 'jpg');
% %  saveas(h(i), ['HistogramPlots_All_Patient' num2str(i)], 'jpg');
% %     
% % end