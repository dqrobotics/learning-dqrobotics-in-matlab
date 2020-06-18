# Kinematic modeling and control of serial-link robotic manipulators: From zero to hero

A crash course on the kinematic modeling and control of robotic manipulators using DQ Robotics. Start from the very basic mathematical operations available in MATLAB to constrained control of multiple manipulators with degrees-of-freedom.

All lessons are in MATLAB Live Script format, meaning that the coding is explained alongside with the mathematical equations that they represent. At the end of each lesson, there is a homework section to help the reader internalize the concepts introduced in the lesson.

### Disclaimer
The current files are under development, and released in an **beta** state, meaning that some people have experienced the course but here might still be some errors. If you find any issues, please let us know.

### Lessons
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

### Acknowledgments
Murilo Marinho would like to thank Jan Laine Buendia for her careful reading of the lessons and many suggestions for improvements.
