#! /bin/bash
# Build Project
build_project(){
  git clone https://github.com/EugeneBad/DjangoChannels-Angular-Docker.git
  cd /home/ubuntu/DjangoChannels-Angular-Docker/backend
  export LC_ALL="en_US.UTF-8"
  export LC_CTYPE="en_US.UTF-8"
  pip3 install -r requirements.txt
  python3 manage.py migrate
}

# Start processes
start_process(){
  supervisord -c /var/tmp/supervisor.conf
}

build_project
start_process
