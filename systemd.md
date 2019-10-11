# Systemd

## telinit 3
systemctl isolate multi-user.target

## telinit 5
systemctl isolate graphical.target

systemctl set-default multi-user.target;
systemctl set-default graphical.target;

