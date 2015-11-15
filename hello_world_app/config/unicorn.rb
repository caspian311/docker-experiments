# set path to application
app_dir = File.expand_path("../..", __FILE__)
working_directory app_dir

# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Set up socket location
listen "0.0.0.0:3000", :tcp_nopush => true

# Logging
stderr_path "/var/log/app/out.log"
stdout_path "/var/log/app/err.log"

# Set master PID location
pid "/var/log/app/app.pid"


