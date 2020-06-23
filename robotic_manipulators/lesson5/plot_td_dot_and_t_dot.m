function plot_td_dot_and_t_dot(stored_td_dot,stored_t_dot,stored_time)
%plot_td_dot_and_t_dot Example function to plot the task-space velocity
% and desired task-space velocity for the open-loop velocity controller

% x-axis
subplot(1,3,1)
plot(stored_time,stored_td_dot(1,:))
hold on
plot(stored_time,stored_t_dot(1,:))
title('x-axis velocity')
ylabel('Velocity [m/s]')
ylim([-5 5])
xlabel('Time [s]')
legend('desired','actual','Location','southeast')
hold off
box off
% y-axis
subplot(1,3,2)
plot(stored_time,stored_td_dot(2,:))
hold on
plot(stored_time,stored_t_dot(2,:))
title('y-axis velocity')
ylabel('Velocity [m/s]')
ylim([-5 5])
xlabel('Time [s]')
legend('desired','actual','Location','southeast')
hold off
box off
% z-axis
subplot(1,3,3)
plot(stored_time,stored_td_dot(3,:))
hold on
plot(stored_time,stored_t_dot(3,:))
title('z-axis velocity')
ylabel('Velocity [m/s]')
ylim([-5 5])
xlabel('Time [s]')
legend('desired','actual','Location','southeast')
hold off
box off
end

