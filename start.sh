sudo docker stop nagios4
sudo docker rm nagios4

sudo docker run --name nagios4  \
  -it --restart unless-stopped \
  -e MAIL_RELAY_HOST="172.17.31.10" \
  -e MAIL_FROM="nagios@aktivit.cz" \
  -e MAIL_INET_PROTOCOLS="ipv4" \
  -e NAGIOS_FQDN="nagios.aktivit.cz" \
  -e NAGIOS_TIMEZONE="Europe/Prague" \
  -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro \
  -h nagios.aktivit.cz \
  -p 8082:80 \
  nagios4


#  -v nagios-objects:/opt/nagios/etc/objects \
#  -v nagios-var:/opt/nagios/var/ \
