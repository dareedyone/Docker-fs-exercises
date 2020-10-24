
error has to do with docker.sock path access which might be because i am using windows
drd1@sp-drd1 MINGW64 ~/Documents/code/helsinki/DOCKER/docker fs/part 3/3.3/simplebuildservice (master)
$ docker run -v /var/run/docker.sock:/var/run/docker.sock dareedyone/simple-build-service https://github.com/dareedyone/dwdthreepointtwo.git dwdthreepointtwo
docker: Error response from daemon: mkdir C:\Program Files\Git\var: Access is denied.
See 'docker run --help'.
