# copa_docker
```
xhost+
cd <any path>
git clone --recursive git@github.com:yanoyoshiki/copa_docker.git
cd copa_docker/docker 
sh build.sh
sh run.sh
cd multiagent-particle-envs/
pip install -e .
cd ..
python3 main.py --method aqmix+coach+vi --vi_lambda 0.001 --centralized_every 2
```
render func.(git diff log)
```
❯ git diff      
diff --git a/main.py b/main.py
index bee73c0..1f57fa3 100644
--- a/main.py
+++ b/main.py
@@ -385,7 +385,7 @@ def run():
 
 if __name__ == "__main__":
     #test()
-    run()
-    #render_episodes()
+    #run()
+    render_episodes()
     #expert()
     #random()
```
