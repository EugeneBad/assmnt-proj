#! /bin/bash -e

# Clone project
build_project(){
  git clone https://github.com/EugeneBad/DjangoChannels-Angular-Docker.git
  cd /home/ubuntu/DjangoChannels-Angular-Docker/angular
  npm install
  sudo npm install -g @angular/cli
  ng build --prod
}

# Start consul
start_processes(){
  sudo apt-get install supervisor -y
  supervisord -c /var/tmp/supervisor.conf
}

# Reload nginx
reload_nginx(){
  sudo nginx -s reload
}

build_project
start_processes
reload_nginx
