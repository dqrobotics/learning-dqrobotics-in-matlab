classdef ThreeDofPlanarRobotDH
    %ThreeDofPlanarRobot regarding all methods related to the 3-DoF planar robot
    
    methods (Static)
        function ret = kinematics()
            %kinematics returns the kinematics of the ThreeDoFPlanarRobot as DQ_SerialManipulatorDH
            DH_theta=  [0, 0, 0];
            DH_d =     [0, 0, 0];
            DH_a =     [1, 1, 1];
            DH_alpha = [0, 0, 0];
            DH_type = repmat(DQ_SerialManipulatorDH.JOINT_ROTATIONAL,1,3);
            DH_matrix = [DH_theta;
                DH_d;
                DH_a;
                DH_alpha;
                DH_type];
            
            ret = DQ_SerialManipulatorDH(DH_matrix,'standard');
            ret.name = "3 DoF Planar Robot";
        end
    end
end