# maggie_description

ROS package with the URDF model for the Social Robot Maggie.

**How to generate the TF tree GraphViz/PDF:**

`roscd maggie_description/tree`
`urdf_to_graphiz ../robots/maggie.urdf`

**How to generate the URDF from the xacro:**

`roscd maggie_description`
`rosrun xacro xacro robots/maggie.urdf.xacro > robots/maggie.urdf`

**How to check the URDF:**

`roscd maggie_description`
`check_urdf robots/maggie.urdf`

**How to visualize in RVIZ:**

`roscd maggie_description`
`roslaunch maggie_description display.launch model:=robots/maggie.urdf`

## LICENSE

The license of the packages is custom LASR-UC3M (Licencia Académica Social Robotics Lab - UC3M), an open, non-commercial license which enables you to download, modify and distribute the code as long as you distribute the sources.

## ACKNOWLEDGEMENTS

![RoboticsLab](http://ieee.uc3m.es/images/thumb/b/b6/Roboticslab_text_new.jpg/128px-Roboticslab_text_new.jpg)
![UC3M](http://ieee.uc3m.es/images/thumb/6/6b/Logo_uc3m_letras.png/256px-Logo_uc3m_letras.png)
