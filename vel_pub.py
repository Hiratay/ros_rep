#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

rospy.init_node('vel_pub')
pub = rospy.Publisher('/mobile_base/commands/velocity', Twist, queue_size=10)

rate = rospy.Rate(100)
vel = Twist()

vel.linear.x = 100
vel.angular.z = 100
rate.sleep()
print vel
pub.publish(vel)
