 #!/bin/bash 
LINE="___________________________________________________________"
figlet System
echo "$LINE"
echo "DATE UTC: $(date -u +'%m/%d/%y %H:%M:%S')"
echo "HOSTNAME: $(hostname)"
echo "UPTIME: $(uptime -p)"
echo "USER: $USER"
figlet MEMORY
free -h
figlet DISK
df -h --output=source,size,used,avail,pcent,target | grep -v tmpfs
