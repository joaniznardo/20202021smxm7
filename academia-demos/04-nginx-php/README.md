# nginx + php

## nota important
els dominis que s'empraran seran els que segueixen aquest patró: 
- acaba-amb-traefikpuntme-enangles-traefikdotme-i-posa-tot-el-que-vulgues-separat-per-guions-abans-de-la-ip-10-5-1-12.traefik.me

Exemple: **contact-form-10-5-1-12.traefik.me**


En aquest exemple tracte de "donar" vida a les webs estàtiques fent que puguen "posar en marxa" aplicacions o scripts al servidor.

NOTA PRÈVIA: la demo, per simplificar el procés, genera una llista de contactes en csv en UN DIRECTORI PÚBLIC, cosa la qual no s'hauria de fer mai!!!! YHBW!!!

Aquesta demo parteix de:
- clau pública del compte de la màquina física a user1@base
- clau pública del compte de la màquina física a user1@dmzc (ssh-copy-id -o "ProxyJump user1@ip_base" user1@ip_destí)
- compte user1 a dmzc com a sudoer


Caldrà fer després (via ssh: ssh vmdmzc 'ordre') 

ssh -t vmdmzc 'echo "user1 ALL= NOPASSWD:/usr/bin/rsync" | sudo tee /etc/sudoers.d/01-user1-rsync'  
ssh -t vmdmzc 'sudo apt update ; sudo apt install -y nginx php-fpm'  
ssh -t vmdmzc 'sudo rm /etc/nginx/sites-enabled/default'  
ssh -t vmdmzc 'sudo mkdir -p  /usr/share/nginx/html/online'  
ssh -t vmdmzc 'sudo touch /usr/share/nginx/html/online/contact_data.csv'  
make up  
ssh -t vmdmzc 'sudo chown www-data: /usr/share/nginx/html/online/contact_data.csv'  
ssh -t vmdmzc 'sudo systemcl restart nginx'  

 

# Referències
- [LEMP a tecmint](https://www.tecmint.com/install-lemp-on-debian-10-server/)
- [nginx official](https://docs.nginx.com/nginx/admin-guide/web-server/web-server/)
- [nginx samples](https://www.nginx.com/resources/wiki/)
- [cas pràctic](https://phpcoder.tech/wp-content/cache/all/save-contact-form-data-in-csv-file-using-php/index.html)
- [documentació nginx](https://docs.nginx.com/nginx/admin-guide/security-controls/terminating-ssl-http/#setting-up-an-https-server)
- [nginx hack - site enabler](https://github.com/ajsalkeld/nginx-modsite/releases)
- [traefik.me](https://traefik.me)
- [bastion host explained](https://www.redhat.com/sysadmin/ssh-proxy-bastion-proxyjump)
