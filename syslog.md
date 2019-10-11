# Syslog

## Test configuration
sudo newsyslog -nvv

## Manual roll over
newsyslog -R "Log file rotated" /var/log/httpd-ssl_request.log
