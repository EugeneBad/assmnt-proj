#! /bin/bash -e

# Update packages
update_packages(){
  sudo apt-get update
  sudo apt-get install unzip -y
  sudo apt install python-pip -y
  sudo apt install python3-pip -y
  pip install supervisor

}

# Install consul
install_consul(){
  curl https://releases.hashicorp.com/consul/1.3.0/consul_1.3.0_linux_amd64.zip -o consul.zip
  unzip consul.zip
  sudo mv consul /usr/local/bin/consul
}

main (){
  update_packages
  install_consul
}

main
