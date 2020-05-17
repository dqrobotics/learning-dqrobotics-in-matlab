classdef OneDofPlanarRobot
    %OneDofPlanarRobot regarding all methods related to the 1-DoF planar robot
    
    properties (Access=private)
        % The length of the robot, in meters
        l1
    end
    
    methods
        function obj = OneDofPlanarRobot(l1)
            %OneDofPlanarRobot creates a 1-DoF planar robot of length l
            obj.l1 = l1;
        end
        
        function t_w_r = fkm(obj,theta1)
            %fkm calculates the FKM for the 1-DoF planar robot.
            
            % Include the namespace inside the function
            include_namespace_dq
            
            % The rotation about the joint
            x_w_1 = cos(theta1/2.0) + k_*sin(theta1/2.0);
            % The translation about the length
            x_1_r = 1 + 0.5*E_*i_*obj.l1;
            % Pose transformation
            x_w_r = x_w_1*x_1_r;
            
            % Get the translation
            t_w_r = translation(x_w_r);
        end
        
        function theta = ikm_tx(obj,tx)
            %fkm calculates the IKM for the 1-DoF planar robot using the 
            % desired x-axis translation.
            
            % Return the angle to reach the desired tx
            theta = acos(tx/obj.l1);
        end
        
        function theta = ikm_ty(obj,ty)
            %fkm calculates the IKM for the 1-DoF planar robot using the 
            % desired y-axis translation.
            
            % Return the angle to reach the desired ty
            theta = asin(ty/obj.l1);
        end
        
        function Jt = translation_jacobian(obj,theta1)
            % Calculates the translation Jacobian of the 1-DoF planar
            % robot.
            
            % Include the namespace inside the function
            include_namespace_dq
            
            j = obj.l1*(-i_*sin(theta1)+j_*cos(theta1));
            Jt = vec3(j);
        end
        
        function plot(obj,theta1)
            % Plot the 1-DoF planar robot in the xy-plane
            
            % Get the fkm
            t_w_r = obj.fkm(theta1);
            
            % Plot
            plot([0 t_w_r.q(2)],[0 t_w_r.q(3)],'r')
            hold on
            % Mark the base with an o
            plot(0,0,'o')
            % Mark the end effector with an x
            plot(t_w_r.q(2),t_w_r.q(3),'x')
            hold off
            title('The One DoF planar robot in the xy-plane')
            xlim([-2 2])
            xlabel('x [m]')
            ylim([-2 2])
            ylabel('y [m]')
        end
    end
end