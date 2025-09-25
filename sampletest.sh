#!/bin/bash
# Created By ManojKumar for Test Demo
p=tj
q=rt
sudo su - foss <<$p
#clear
ssh -q vldddv021.dev.intranet <<$q
cd /opt/apache/corp/websites/mrit-dev1-30149-40150;
#echo " log directory path on `hostname` is `pwd`"
echo "===== list of files on server vldddv021.dev.intranet for log directory==="
ls -ltrh;
echo "======log directory path is ======"
pwd;
echo "====server name is ========="
hostname;
uptime
echo "====end of the file details"
$q
$p
mail -a "output.log" -s "Jenkins notification for Test pipeline to run command on vlddjumpdv140 server and sudo to foss and then ssh to vldddv021 " mxkum20@centurylink.com </dev/null
