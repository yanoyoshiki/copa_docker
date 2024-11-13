# copa_docker
```
xhost+
cd <any path>
git clone --recursive git@github.com:yanoyoshiki/copa_docker.git
cd copa_docker/docker 
sh build.sh
sh run.sh
```
-------------------
```
cd multiagent-particle-envs/
pip install -e .
cd ..
python3 main.py --method aqmix+coach+vi --vi_lambda 0.001 --centralized_every 2
```
