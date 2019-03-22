#! /bin/bash -e

# Start consul
start_processes(){
  supervisord -c /var/tmp/supervisor.conf
}

start_processes
