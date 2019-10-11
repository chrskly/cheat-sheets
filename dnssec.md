
## Enable DNSSEC in bind

options {
    dnssec-validation auto;
};

options are
* no - disabled. Never do DNSSEC
* auto - enabled.
* yes - enabled. Trust anchors must be specified manually.

## Test DNSSEC is working for domain/NS

dig @192.168.1.7 somedomain.com A +dnssec +multiline

* ad flag - Authenticated Data - signature checks out (all the way up)
* do header - nameserver is DNSSEC aware

## Testing DNSSEC

delv @ns.foo.com somedomain.com A

## Web tool to analyse DNSSEC settings for a domain

https://dnssec-analyzer.verisignlabs.com/usaliberties.org



