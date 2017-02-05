#!/bin/bash

for ((i=0 ; i<12 ; i++))
do
for ((j=0 ; j<12 ; j++))
do
rosservice call /spawn $i $j 1 ""
done
done

rosrun ros_start vel_publisher.py /mobile_base/commands/velocity:=/turtle1/cmd_vel
rostopic pub /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 100]'

rosrun ros_start vel_publisher.py /mobile_base/commands/velocity:=/turtle1/cmd_vel

