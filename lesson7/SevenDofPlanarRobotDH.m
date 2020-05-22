classdef SevenDofPlanarRobotDH
    %SevenDofPlanarRobot class representing a 7-DoF planar robot
    
    methods (Static)
        function ret = kinematics()
            %kinematics returns the kinematics of the SevenDofPlanarRobot as DQ_SerialManipulatorDH
            DH_theta=  zeros(1,7);
            DH_d =     zeros(1,7);
            DH_a =     ones(1,7);
            DH_alpha = zeros(1,7);
            DH_type = repmat(DQ_SerialManipulatorDH.JOINT_ROTATIONAL,1,7);
            DH_matrix = [DH_theta;
                DH_d;
                DH_a;
                DH_alpha;
                DH_type];
            
            ret = DQ_SerialManipulatorDH(DH_matrix,'standard');
            ret.name = "7 DoF Planar Robot";
        end
    end
end