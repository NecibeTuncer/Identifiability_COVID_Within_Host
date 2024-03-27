function y = TIVmodel(time,theta,y0)

[~,y_1] = ode23s(@Target_Cell_rhs,time,y0,[],theta);

 y = [log10(y_1(:,3)) log10(y_1(:,6))];

%y = log10(y_1(:,3));

