# Raspberry Pi

```
v4l2-ctl --list-formats-ext

ffmpeg -f video4linux2 -s 1280x720 -i /dev/video0 -vframes 1 test.jpg

raspistill -o cam.jpg

vcgencmd get_mem gpu
vcgencmd get_mem arm

vcgencmd get_camera
```
