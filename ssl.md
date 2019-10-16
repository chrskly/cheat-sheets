# SSL

## Check md5 of crts/keys
```
openssl x509 -noout -modulus -in /etc/yourcertificate.crt | openssl md5
openssl rsa -noout -modulus -in /etc/private.key | openssl md5
```

## SHA256/SHA1/MD5
```
openssl x509 -noout -fingerprint -sha256 -inform pem -in foo.crt
openssl x509 -noout -fingerprint -sha1 -inform pem -in foo.crt
openssl x509 -noout -fingerprint -md5 -inform pem -in foo.crt
```

## Convert a pem (pub + priv) to a p12
```
openssl pkcs12 -export -in [filename-certificate] -inkey [filename-key] -name [host] -out [filename-new-PKCS-12.p12]
```

## Convert a jks to a pem (jks -> p12 -> priv + pub)
```
keytool -importkeystore -srckeystore keystore.jks -destkeystore keystore.p12 -deststoretype PKCS12 -srcalias <jkskeyalias>
openssl pkcs12 -in keystore.p12  -nokeys -out cert.pem
openssl pkcs12 -in keystore.p12  -nodes -nocerts -out key.pem
```

## Import a p12 to a JKS
```
keytool -importkeystore -deststorepass [password] -destkeystore [filename-new-keystore.jks] -srckeystore [filename-new-PKCS-12.p12] -srcstoretype PKCS12
```

## Copy keys/certs from one keystore to another
```
keytool -importkeystore -srckeystore wildcard.keystore -srcstorepass changeit -destkeystore jre/lib/security/cacerts -deststorepass changeit
```

## Decrypt SSL capture
```
ssldump -r /path/to/capture-file -k /path/to/private-key 
ssldump -Aed -nr /var/tmp/www-ssl-client.cap -k /config/ssl/ssl.key/www-ssl.key
```

## Check private key
```
openssl rsa -in privateKey.key -check
```

## Check cert
```
openssl x509 -in certificate.crt -text -noout
```

## Print out certs from a chain
```
openssl crl2pkcs7 -nocrl -certfile ca.pem | openssl pkcs7 -print_certs -noout -text
```
