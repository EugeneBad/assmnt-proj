#! /bin/bash -e

# Install dependencies
install_dependencies(){
  sudo apt-get update;
  sudo apt-get install -y software-properties-common;
  sudo add-apt-repository ppa:certbot/certbot -y;
  sudo apt-get update;
  sudo apt-get install python-certbot-nginx -y
}

generate_cert(){
  sudo certbot --nginx certonly -d hochetto.com --non-interactive --agree-tos -m eudriku@gmail.com
}

main(){
  install_dependencies
  generate_cert
}

main
