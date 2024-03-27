%chain plots 

skip_number = 1000;
plot_measure = 1:skip_number:1e+6;

figure
subplot(3,3,1)
plot(chain(plot_measure,1),'b.','MarkerSize',2)
yline(mean(chain(:,1)), 'k-', 'LineWidth',2)
set(gca,'XTick',[])
xlabel('\beta_u')
% set(gca,'YLim', [min(chain(:,1)) max(chain(:,1))],...
%     'YTick',[min(chain(:,1)), max(chain(:,1))])
subplot(3,3,2)
plot(chain(plot_measure,2),'b.','MarkerSize',2)
yline(mean(chain(:,2)), 'k-', 'LineWidth',2)
xlabel('\delta_u')

subplot(3,3,3)
plot(chain(plot_measure,3),'b.','MarkerSize',2)
yline(mean(chain(:,3)), 'k-', 'LineWidth',2)
xlabel('c_u')

subplot(3,3,4)
plot(chain(plot_measure,4),'b.','MarkerSize',2)
yline(mean(chain(:,4)), 'k-', 'LineWidth',2)
xlabel('k_u')

subplot(3,3,5)
plot(chain(plot_measure,5),'b.','MarkerSize',2)
yline(mean(chain(:,5)), 'k-', 'LineWidth',2)
xlabel('\beta_l')

subplot(3,3,6)
plot(chain(plot_measure,6),'b.','MarkerSize',2)
yline(mean(chain(:,6)), 'k-', 'LineWidth',2)
xlabel('\delta_l')

subplot(3,3,7)
plot(chain(plot_measure,7),'b.','MarkerSize',2)
yline(mean(chain(:,7)), 'k-', 'LineWidth',2)
xlabel('c_l')

subplot(3,3,8)
plot(chain(plot_measure,8),'b.','MarkerSize',2)
yline(mean(chain(:,8)), 'k-', 'LineWidth',2)
xlabel('k_l')

subplot(3,3,9)
plot(chain(plot_measure,9),'b.','MarkerSize',2)
yline(mean(chain(:,9)), 'k-', 'LineWidth',2)
xlabel('K')

