#!/bin/bash
FILE1=arc.tar
FILE2=backups/arc.tar.gz
function cleanup {
  if test -f "$1"; then  
    rm -f arc.tar
  fi
}

cd /var/log/
cleanup FILE1
cleanup FILE2
tar -cvf arc.tar  yum.log
gzip arc.tar
mv arc.tar.gz  /tmp/backups/
