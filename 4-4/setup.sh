#! /bin/bash

ansible rhel -m yum -a "name=vsftpd state=installed" --become
ansible rhel -m service -a "name=vsftpd state=started enabled=true" --become

