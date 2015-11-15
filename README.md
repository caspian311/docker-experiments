# docker-experiments

So this is my attempt at using Docker images. This is a simple Rails app that uses a MySQL backend.

###Build the base image:

    docker build -t caspian311/rails_server:1.0 rails_server

###Build the rails app server:

    docker build -t caspian311/hello_world:1.0 hello_world_app

###Start-up the rails app with log files outside of the container:

    log_path=$(mkdir -p logging ; pushd logging &> /dev/null; echo pwd; popd &> /dev/null)
    docker run --net=host  -v $log_path:/var/log/app -d -P caspian311/hello_world:1.0
    
###Hit the server

    open http://localhost:3000

