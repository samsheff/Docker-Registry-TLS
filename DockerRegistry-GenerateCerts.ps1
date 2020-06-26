param (
    [string]$HOSTNAME = $( Read-Host "Enter Host for Cert" ),
    [string]$IP = $( Read-Host "Enter IP Address for Cert" )
 )

openssl req -newkey rsa:4096 -nodes -keyout certs/domain.key -sha256 -days 365 -out certs/domain.crt -addext "subjectAltName = IP:${IP}" -subj "/C=US/ST=CA/L=SanFrancisco/O=MyCompany/OU=RND/CN=${HOSTNAME}}/"