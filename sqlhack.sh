#!/bin/bash

echo "Installing SqlCmd.."
if [[ $(sqlcmd | grep Version) != *"13."* ]]; then {
    repoPrConf="/etc/yum/pluginconf.d/priorities.conf"
    rm -f ${repoPrConf}

cat >> ${repoPrConf} << EOF
[main]
enabled = 0
EOF

    chmod 644 ${repoPrConf}
    curl https://packages.microsoft.com/config/rhel/6/prod.repo > /etc/yum.repos.d/msprod.repo
    yum update -y
    ACCEPT_EULA=y yum install mssql-tools -y
    sudo ln -s /opt/mssql-tools/bin/sqlcmd /usr/local/bin

    if [[ $(sqlcmd | grep Version) != *"13."* ]]; then {
        echo "SqlCmd has been installed with error" 
        exit 1
    } else {
        echo "SqlCmd has been installed successfully" 
    }
    fi
} else {
    echo "SqlCmd has been already installed" 
}
fi
