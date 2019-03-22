#! /bin/bash -e
# Start consul
start_processes(){
  sudo apt-get install supervisor -y
  supervisord -c /var/tmp/supervisor.conf
  sleep 5
  nohup consul-template -config /var/tmp/lb-consul-template.hcl &
}

start_processes
