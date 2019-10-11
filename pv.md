# PV

```
sudo tail -f /var/log/haproxy/haproxy.log | pv -l -i10 -r >/dev/null
```
