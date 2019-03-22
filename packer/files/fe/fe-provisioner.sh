#! /bin/bash -e

# Update packages
update_packages(){
  sudo apt-get update
  sudo apt-get install unzip -y
  sudo apt install python-pip -y
  pip install supervisor

}

# Install Nginx
install_nginx(){
  sudo apt-get install nginx -y
}

# Install consul
install_consul(){
  curl https://releases.hashicorp.com/consul/1.3.0/consul_1.3.0_linux_amd64.zip -o consul.zip
  unzip consul.zip
  sudo mv consul /usr/local/bin/consul
}

install_node(){
  curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
  sudo apt install nodejs -y
}

# Copy nginx config files
clear_nginx_config(){
  sudo rm -r /etc/nginx/conf.d
  sudo mkdir /etc/nginx/conf.d

  sudo mv /var/tmp/fe_nginx.conf /etc/nginx/sites-enabled/default
}

main (){
  update_packages
  install_nginx
  install_consul
  install_node
  clear_nginx_config
}

main
