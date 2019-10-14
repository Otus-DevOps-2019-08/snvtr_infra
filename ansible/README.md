user@VirtualBox:~/snvtr_infra/ansible$ ansible-playbook clone.yml

PLAY [Clone] *****************************************************************************************************************************

TASK [Gathering Facts] *******************************************************************************************************************
ok: [appserver]

TASK [Clone repo] ************************************************************************************************************************
ok: [appserver]

PLAY RECAP *******************************************************************************************************************************
appserver                  : ok=2    changed=0    unreachable=0    failed=0   

user@VirtualBox:~/snvtr_infra/ansible$ ansible app -m command -a 'rm -rf ~/reddit'
 [WARNING]: Consider using the file module with state=absent rather than running 'rm'.  If you need to use command because file is
insufficient you can add 'warn: false' to this command task or set 'command_warnings=False' in ansible.cfg to get rid of this message.

appserver | CHANGED | rc=0 >>


user@VirtualBox:~/snvtr_infra/ansible$ ansible-playbook clone.yml

PLAY [Clone] *****************************************************************************************************************************

TASK [Gathering Facts] *******************************************************************************************************************
ok: [appserver]

TASK [Clone repo] ************************************************************************************************************************
changed: [appserver]

PLAY RECAP *******************************************************************************************************************************
appserver                  : ok=2    changed=1    unreachable=0    failed=0   

