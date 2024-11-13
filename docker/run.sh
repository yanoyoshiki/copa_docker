docker run \
 --net=host \
 --gpus all \
 -v $HOME/.Xauthority:/root/.Xauthority:rw \
 -v /etc/localtime:/etc/localtime:ro \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 -v $PWD/../src/marl-copa:/root/marl-copa \
 -e DISPLAY=$DISPLAY \
 -it --name "marl-copa" marl_copa bash \
