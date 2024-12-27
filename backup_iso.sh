#!/bin/bash




find /home/liam/Downloads/ -type f -name "*.iso" -exec  mv {} ~/Downloads/iso \;

rsync -avz --delete /home/liam/Downloads/iso/ liam@10.2.1.53:/media/storage/share/iso/

