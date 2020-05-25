function plot_u(stored_u,stored_time, percentage)
%plot_u Example function to plot the controller inputs

% Get the length of the data
data_length = length(stored_u);
% Get the first "percentage" percent of the data (as an integer)
data_cut_length = round((percentage/100.0)*data_length);

% Plot the desired data for each joint
for i=1:7
    plot(stored_time(1:data_cut_length),stored_u(i,1:data_cut_length))
    hold on
end

% Add the rest of the plot information
title('Controller results')
ylabel('Joint velocity [rad/s]')
xlabel('Time [s]')
legend('j1','j2','j3','j4','j5','j6','j7')
hold off
box off
end

