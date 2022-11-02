DEV_CONTAINER="autoware_ros_${USER}"

xhost +local:root 1>/dev/null 2>&1

docker exec \
    -u root \
    -it "${DEV_CONTAINER}" \
    /bin/bash -c "./entrypoint.sh"

xhost -local:root 1>/dev/null 2>&1
