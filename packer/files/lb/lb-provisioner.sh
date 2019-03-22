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

# Install consul and consule template
install_consul(){
  curl https://releases.hashicorp.com/consul/1.3.0/consul_1.3.0_linux_amd64.zip -o consul.zip
  unzip consul.zip
  sudo mv consul /usr/local/bin/consul

  curl https://releases.hashicorp.com/consul-template/0.19.5/consul-template_0.19.5_linux_386.zip -o consul-template.zip
  unzip consul-template.zip
  sudo mv consul-template /usr/local/bin/consul-template
}

# Copy nginx config files
clear_nginx_config(){
  sudo rm -r /etc/nginx/conf.d
  sudo mkdir /etc/nginx/conf.d
}

main (){
  update_packages
  install_nginx
  install_consul
  clear_nginx_config
}

main
