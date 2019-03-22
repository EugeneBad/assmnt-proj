template {
  source = "/var/tmp/lb_nginx.ctmpl"
  destination = "/etc/nginx/sites-enabled/default"
  command = "nginx -s reload"
}
