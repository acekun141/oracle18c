#/bin/sh/ -e

wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.001
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.002
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.003
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.004
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.005
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.006
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.007
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.008
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.009
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.010
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.011
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.012
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.013
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.014
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.015
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.016
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.017
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.018
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.019
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.020
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.021
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.022
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.023
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.024
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.025
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.026
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.027
wget https://raw.githubusercontent.com/acekun141/oracle18c/master/packages/oracle-database-xe-18c-1.0-1.x86_64.zip.028

export ORACLE_FILE="oracle-database-xe-18c-1.0-1.x86_64.zip"
export ORACLE_HOME="/u01/app/oracle/product/12.1.0/xe"
export ORACLE_SID=XE

# make sure that hostname is found from hosts (or oracle installation will fail)
ping -c1 $(hostname) || echo 127.0.0.1 $(hostname) | sudo tee -a /etc/hosts

# ORACLE_RPM="$(basename $ORACLE_FILE .zip)"

# cd "$(dirname "$(readlink -f "$0")")"

# dpkg -s bc libaio1 rpm unzip > /dev/null 2>&1 ||
#   ( sudo apt-get -qq update && sudo apt-get --no-install-recommends -qq install bc libaio1 rpm unzip )

# df -B1 /dev/shm | awk 'END { if ($1 != "shmfs" && $1 != "tmpfs" || $2 < 2147483648) exit 1 }' ||
#   ( sudo rm -r /dev/shm && sudo mkdir /dev/shm && sudo mount -t tmpfs shmfs -o size=2G /dev/shm )

# test -f /sbin/chkconfig ||
#   ( echo '#!/bin/sh' | sudo tee /sbin/chkconfig > /dev/null && sudo chmod u+x /sbin/chkconfig )

# test -d /var/lock/subsys || sudo mkdir /var/lock/subsys

# unzip -j "$(basename $ORACLE_FILE)" "*/$ORACLE_RPM"
# sudo rpm --install --nodeps --nopre "$ORACLE_RPM"

# echo 'OS_AUTHENT_PREFIX=""' | sudo tee -a "$ORACLE_HOME/config/scripts/init.ora" > /dev/null
# sudo usermod -aG dba $USER

# ( echo ; echo ; echo travis ; echo travis ; echo n ) | sudo AWK='/usr/bin/awk' /etc/init.d/oracle-xe configure

# "$ORACLE_HOME/bin/sqlplus" -L -S / AS SYSDBA <<SQL
# CREATE USER travis IDENTIFIED BY travis;
# GRANT CONNECT, RESOURCE TO travis;
# GRANT EXECUTE ON SYS.DBMS_LOCK TO travis;
# SQL