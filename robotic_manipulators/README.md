# Kinematic modeling and control of serial-link robotic manipulators using DQ Robotics: From zero to hero

A crash course on the kinematic modeling and control of robotic manipulators. Start from the very basic mathematical operations available in MATLAB to constrained kinematic control of manipulators with multiple degrees-of-freedom.

All lessons are in MATLAB Live Script format, meaning that the coding is explained alongside the mathematical equations that they represent. At the end of each lesson, there is a homework section to help the reader internalize the concepts introduced in the lesson.

## How to use

1. Clone the repository or [Download it as a ZIP package](https://github.com/dqrobotics/learning-dqrobotics-in-matlab/archive/refs/heads/master.zip).
2. Open each Lesson in MATLAB and follow through the live script.

## Lessons
The following lessons are currently available.
|Number|Title|Content|
|---|---|---|
|1|*MATLAB Basics*|The very basics of MATLAB, including simple mathematical operations.|
|2|*Quaternion Basics*|Representing and manipulating quaternions using DQ Robotics MATLAB. Unit quaternions are also introduced and used to represent the rotation of rigid bodies|
|3|*Dual Quaternion Basics (Part 1)*| Representing and manipulating dual quaternions using DQ Robotics MATLAB. Unit dual quaternions are introduced and used to represent the pose transformation of rigid bodies.|
|4|*Dual Quaternion Basics (Part 2)*| Unit dual quaternions are used to represent lines and planes. Distance functions between points, lines, and planes are also introduced|
|5|*Robot Control Basics (Part 1)*| The basics of the kinematic control of serial-link robotic manipulators. Forward kinematics model, inverse kinematics model, task-space velocity and position control using a 1-DoF planar robot.|
|6|*Robot Control Basics (Part 2)*| Modeling serial robots using the Denavit-Hartenberg (DH) parameters; the forward kinematics model using the DH parameters; the pose, rotation, translation Jacobians; translation, rotation, and pose task-space controlers; all using a 3-DoF planar robot.|
|7|*Robot Control Basics (Part 3)*| Understanding and handling task-space singularities with a 7-DoF planar robot.|
|8|*Optimization-based Robot Control*| Revisiting the topic of kinematic control using mathematical optimization formulation, implement joint-space and task-space constraints using quadratic programming.|

## References
As a crash course, these lessons do not aim to replace a good robotics textbook. 

1. For a more extensive discussion, see [1] (although they do not mention dual quaternion algebra).
2. For the notation and content of some of the first few lessons, see [2].
3. For the Jacobians and so on mentioned in lesson 6, see [3].
4. For more details on the constrained control presented in lesson 8, see [4]. 

- [1] Siciliano, B., Sciavicco, L., Villani, L. and Oriolo, G., 2010. Robotics: modelling, planning and control. Springer Science & Business Media.
- [[2]](https://hal.archives-ouvertes.fr/hal-01478225/) Adorno, B.V., 2017. Robot Kinematic Modeling and Control Based on Dual Quaternion Algebra---Part I: Fundamentals.
- [[3]](https://tel.archives-ouvertes.fr/tel-00641678/) Adorno, B.V., 2011. Two-arm manipulation: From manipulators to enhanced human-robot collaboration (Doctoral dissertation).
- [[4]](https://arxiv.org/pdf/1910.11612) Marinho, M.M., Adorno, B.V., Harada, K. and Mitsuishi, M., 2019. Dynamic active constraints for surgical robots using vector-field inequalities. IEEE Transactions on Robotics, 35(5), pp.1166-1185.

## Acknowledgments
Murilo Marinho would like to thank Jan Laine Buendia for her careful reading of the lessons and many suggestions for improvements.

## Comments/Suggestions...
A considerable number of people have successfully taken this course, but there might still be some errors. If you have any issues, please let us know.
