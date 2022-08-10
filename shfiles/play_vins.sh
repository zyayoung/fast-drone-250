roscore &
sleep 2
rosbag play $1 &
sleep 1
roslaunch vins fast_drone_250.launch &
roslaunch ego_planner single_run_in_exp.launch &
roslaunch rosbridge_server rosbridge_websocket.launch &
wait
