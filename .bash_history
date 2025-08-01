ansible-playbook --syntax-checkn site.yml 
ansible-playbook --syntax-check site.yml 
ansible-playbook --syntax-check 
ls
ansible-playbook --syntax-check common-hardening.yml 
ansible-playbook --syntax-check web-deploy.yml 
ansible-playbook site.yml 
ls
vi common-hardening.yml 
ls
vi hosts 
ansible-config ansible.cfg 
ls
ansible-playbook site.yml 
vi common-hardening.yml 
ls
cat web-deploy.yml 
ls
vi common-hardening.yml 
ansible all -m shell -a 'ufw status numbered'
ls
vi common-hardening.yml 
vi web-deploy.yml 
cd ..
ls
cd ans-nginx-pjt/
ls
cd ..
cd ansible-nginx/
ls
cat playbook.yml 
cd ..
ls
cd ans-nginx-pjt/
ls
cd ..
cd ansibleLab/
ls
cd files/
ls
cat pb.yml 
q!
cd ..
ls
cd ..
ls
cd ans-nginx-pjt/
ls
vi web-deploy.yml 
ls
ansible-playbook --syntax-check web-deploy.yml 
vi web-deploy.yml 
ansible-playbook --syntax-check web-deploy.yml 
vi web-deploy.yml 
ansible-playbook --syntax-check web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
ls
cat site.yml 
vi web-deploy.yml 
ansible-playbook site.yml 
vi web-deploy.yml 
cp web-deploy.yml web-deploy-task.yml
ls
cat site
cat site.yml 
vi site.yml 
ansible-playbook -i hosts
ansible-playbook -i hosts web-deploy-task.yml 
ls
vi web-deploy-task.yml 
ansible-playbook site.yml
vi web-deploy-task.yml 
ansible-playbook site.yml
vi web-deploy-task.yml 
ansible-playbook site.yml
ls
vi site.yml 
ls
cat web-deploy-task.yml 
ls
vi site.yml 
ls
cp web-deploy.yml web-dstroy.yml [A
vi web-deploy.yml
ansible-playbook site.yml
vi site.yml 
ansible-playbook site.yml
ls
vi hosts 
vi site.yml 
ansible-playbook site.yml
vi site.yml 
ls
vi web-deploy-task.yml 
ansible-playbook site.yml
vi web-deploy-task.yml 
ansible-playbook site.yml
vi web-deploy-task.yml 
ansible-playbook site.yml
ls
cp site.yml site.yml.ori
vi web-dstroy.yml 
ls
vi web-dstroy.yml 
ls
vi hosts 
ansible-playbook web-dstroy.yml
ls
ansible-inventory --list -i hosts
ansible all -i hosts -m ping
ls
ansible-playbook -i hosts web-dstroy.yml 
ansible-playbook -i ansible.cfg web-dstroy.yml 
ls
vi ansible.cfg 
ansible-inventory --list
ansible webservers -m ping
ls
ansibleansible-inventory --graph
ansible-inventory --graph
ansible-inventory -i hosts --list
cat hosts 
ls
vi hosts 
ansible-inventory --graph
ansible-playbook -i hosts web-dstroy.yml 
ls
vi
ls
cat site.yml.ori 
cd ..
ls
git init
ls
ls -al
cd .git
ls
cd ..
git .
ls
git branch
git config --global user.name jura
git config --global user.email hegs3@naver.com
git get-url
ls
git config --global credential.helper cache
git config --global --add safe.directory ./
git config 
git list
git config all
git config get-all
git remote add origin https://github.com/JURA-Git/ansibleTest.git
git add .
git commit -m "first commit"
ls
cd ansible-dictionary/
ls
cat playbook.yml 
cd ..
ls
cd ansible-dictionary/
ls
cat firewall.yml 
cd ..
ls
cd ansible--di
cd ansible-dictionary/
ls
cat collection.yml 
ls
cat firewall.yml 
ls
cat playbook.yml 
ls
cat environment.yml 
systemctl status -named
ls
cat firewall.yml 
cd ..
ls
cd ansible-dictionary/
ls
cat environment.yml 
cat placeholder.yml 
cat playbook.yml 
ls
cat playbook.yml 
ls
cat environment.yml 
cd ..
ls
cd ansible-nginx
ls
cat playbook.yml 
ls
cd ..
ls
cd ansible-jinja2-dns-HA/
ls
cd vars/
cd ..
cd templates/
ls
vi named.conf.local.j2 
ls
cd vars
cd ..
cd vars/
ls
vi local.yml 
ls
git list
ls
ls -al
ls
git remote 
git config list
sudo git config list
git status
git branch 
git remove -v
history
git remote add origin https://github.com/JURA-Git/ansibleTest.git
git push origin master 
ls
git branch -help
git branch -u master main
git branch -d master main
git branch -m master main
git branch 
git push origin main
ls
mkdir ansible-dictionary
cd ansible-dictionary/
vi hosts
vi playbook.yml
rm playbook.yml 
cat<<EOF>playbook.yml 
---
# 메인 마스터 playbook 파일
- name: Configure web server on Ubuntu 24.04
  hosts: node1
  become: true

  # --- 모든 변수를 이 곳에서 중앙 관리 ---
  vars:
    # Environment
    package_name: apache2
    service_name: apache2

    # Firewall
    firewall_rules:
      - { rule: 'allow', port: '22', proto: 'tcp' }
      - { rule: 'allow', port: '80', proto: 'tcp' }

    # Placeholder
    target_file: /var/www/html/index.html

    # Test
    test_url: "http://{{ inventory_hostname }}"

  tasks:
    - name: Import the environment tasks
      import_tasks: environment.yml

    - name: Import the firewall tasks
      import_tasks: firewall.yml

    - name: Import the placeholder tasks
      import_tasks: placeholder.yml

# 모든 작업 수행 후, 제대로 작동하는지 테스트하는 playbook 파일 삽입
- import_playbook: test.yml
  vars:
    url: "{{ test_url }}"

EOF

cat<<EOF>environment.yml
---
- name: Install the {{ package_name }} package
  ansible.builtin.apt:
    name: "{{ package_name }}"
    state: latest
    update_cache: yes
      
- name: Start and enable the {{ service_name }} service
  ansible.builtin.service:
    name: "{{ service_name }}"
    enabled: true
    state: started
EOF

cat<<EOF>placeholder.yml
---
- name: Create placeholder file
  ansible.builtin.copy:
    content: "{{ inventory_hostname }} has been customized using Ansible.\n"
    dest: "{{ target_file }}"
EOF

cat<<EOF>firewall.yml
---
- name: Install UFW firewall
  ansible.builtin.apt:
    name: ufw
    state: present

- name: Enable UFW
  community.general.ufw:
    state: enabled

- name: Apply firewall rules from list
  community.general.ufw:
    rule: "{{ item.rule }}"
    port: "{{ item.port }}"
    proto: "{{ item.proto }}"
  loop: "{{ firewall_rules }}"
EOF

cat<<EOF>test.yml
---
- name: Test web service connectivity
  hosts: node1
  become: false

  tasks:
    - name: Connect to the web server from the control node
      ansible.builtin.uri:
        url: "http://{{ inventory_hostname }}"
        status_code: 200
      delegate_to: localhost
EOF

ls
vi playbook.yml 
vi firewall.yml 
cat playbook.yml 
cat firewall.yml 
ls
ansible-playbook playbook.yml
ansible-playbook playbook.yml -i hosts 
ls
vi playbook.yml 
vi test.yml 
ansible webservers -a 'ufw status'

ansible webservers -a 'ufw status' -i hosts
ansible node1 -a 'ufw status' -i ansible webservers -a "sudo ufw status" -i inventory.ini
ansible webservers -a "sudo ufw status" -i inventory.ini
cd ..
ls
ccd ansible-dictionary/
cd ansible-dictionary/
ls
ansible webservers -a "sudo ufw status" -i ../ansibleLab/ansible.cfg
ls
cd
ls
cd ansibleLab/
ls
cp ansible.cfg ../ansible.cfg
cd ..
ls
cp ansible.cfg ansible-dictionary/
cd ansible-dictionary/
ls
ansible webservers -a "sudo ufw status" -i ../ansibleLab/ansible.cfg
ansible webservers -a "sudo ufw status"
ls
cat playbook.yml 
ls
cat environment.yml 
ls
cp environment.yml cleanup.yml
vi cleanup.yml 
cd ..
ls
cd ans-nginx-pjt/
ls
cat web-dstroy.yml 
cd ..
cd ansible-dictionary/
ls
vi cleanup.yml 
ls
cat cat playbook.yml 
ls
ansible-playbook cleanup.yml
ls
cat playbook.yml 
vi playbook.yml 
ansible-playbook playbook.yml 
vi playbook.yml 
ls
vi playbook.yml 
ansible-playbook playbook.yml 
vi playbook.yml 
ls
rm cleanup.yml 
cat<<EOF>cleanup.yml
---
- name: Cleanup all
  hosts: webservers
  become: true
  vars:
    package_name: apache2
    service_name: apache2
  tasks:
    - name: Install the {{ package_name }} package
      ansible.builtin.apt:
        name: "{{ package_name }}"
        state: absent

    - name: Start and enable the {{ service_name }} service
      ansible.builtin.service:
        name: "{{ service_name }}"
        enabled: false
        state: stopped
EOF

ls
ansible-playbook cleanup.yml
vi collection.yml
ls
cd ..
ls
mkdir ansible-jinja2-dns-HA
cd ansibleLab/
ls
cat hosts 
cd ..
ls
vi ansible-dictionary/
mv ans-nginx-pjt ansible-nginx-pjt
ls
mv ansibleLab ansible-LAB
ls
cp ansible.cfg ansible-jinja2-dns-HA/
cd ansible-jinja2-dns-HA/
ls
vi hosts
cat ../ansible-LAB/hosts 
ls
vi hosts 
ls
ca ansible.cfg 
cat ansible.cfg 
clear
ls
vi setupDNS.yml
ls
vi setupDNS.yml 
ls
cd ..
ls
cd ansible-nginx-pjt/
ls
cat web-deploy.yml 
ls
cd ..
ls
cd ansible-jinja2-dns-HA/
ls
vi setupDNS.yml 
ls
ansible-playbook --syntax-check setupDNS.yml 
vi setupDNS.yml 
ansible-playbook --syntax-check setupDNS.yml 
vi setupDNS.yml 
ansible-playbook --syntax-check setupDNS.yml 
ansible-playbook setupDNS.yml 
ls
vi setupDNS.yml 
ls
vi firewallUFW.yml
ls
cat setupDNS.yml 
ls
vi firewallUFW.yml 
ansible-playbook firewallUFW.yml 
vi firewallUFW.yml 
ansible-playbook firewallUFW.yml 
vi firewallUFW.yml 
ls
vi firewallUFW.yml 
ansible-playbook firewallUFW.yml 
vi named.conf.options.j2
ls
vi named.conf.options.j2
mkdir templates
ls
mv named.conf.options.j2 templates/
cd templates/
ls
vi named.conf.options.j2 
ls
cd ..
ls
cd templates/
ls
vi named.conf.options.j2 
ls
mv named.conf.options.j2 named.conf.options
ls
cd ..
ls
vi firewallUFW.yml 
ls
cd templates/
ls
cat named.conf.options 
ls
mv named.conf.options named.conf.options.js2
ls
cd ..
ls
vi NamedConfOption.yml
ls
cd templates/
ls
cd ..
ls
mv NamedConfOption.yml namedConfOption.yml 
ls
vi namedConfOption.yml
ls templates/
mv templates/named.conf.options.js2 templates/named.conf.options.j2 
ls
vi namedConfOption.yml 
ls
ansible-playbook --syntax-check setupDNS.yml 
ansible-playbook --syntax-check namedConfOption.yml
ls
cd templates/
ls
vi named.con.local
ls
vi jura.com.db
ls
mv named.con.local named.conf.local.j2
ls
mv jura.com.db jura.com.db.j2
ls
vi jura.com.db.j2
ls
cd ..
ls
vi namedConfOption.yml
ls
vi templates/named.conf.local.j2
ls
cd templates/
ls
cd ..
ls
mkdir vars
ls
ansible-playbook namedConfOption.yml 
ls
cat namedConfOption.yml 
ls
mv namedConfOption.yml dnsConfig.yml
vi dnsConfig.yml 
ls
mv setupDNS.yml dns-setup.yml 
ls
mv dnsConfig.yml dns-config.yml
ls
mv firewallUFW.yml ufw-fireqll.yml
mv ufw-fireqll.yml ufw-firewall.yml
ls
vi dns-config.yml 
ls
vi templates/
cd templates/
ls
vi named.conf.local.j2 
ls
cd ..
ls
cd vars/
ls
vi local.yml
ls
cd ..
cd templates/
ls
vi named.conf.local.j2 
ls
ansible-playbook named.conf.local.j2 
clear
ls
cd ..
ls
cd templates/
ls
cd ..
ls
ansible-playbook ls
ls
vi dns-config.yml 
ansible-playbook --syntax-check dns-config.yml 
ansible-playbook  dns-config.yml 
ls
cd templates/
ls
vi named.conf.local.j2 
ansible-playbook  dns-config.yml 
cd ..
ansible-playbook  dns-config.yml 
ls
cat hosts
cd templates/
ls
vi named.conf.local.j2 
cd ..
ls
ansible-playbook dns-config.yml 
cd templates/
ls
vi named.conf.options.j2 
ls
vi named.conf.local.j2 
ls
cd ansible-jinja2-dns-HA/
ls
cd templates/
ls
cat jura.com.db.j2 
ls
cat named.conf.
vi named.conf.local.j2 
ls
cd ..
ls
cd vars/
ls
cat local.yml 
cd ..
ls
ansible-playbook dns-config.yml 
cat dns-config.yml 
ls
cd templates/
ls
cat named.conf.local.j2 
vi named.conf.local.j2 
ls
cd ..
ansible-playbook dns-config.yml 
ls
vi dns-config.yml 
cd templates/
ls
vi named.conf.local.j2 
cd ..
ls
ansible-playbook dns-config.yml 
ls
cd templates/
ls
cat named.conf.local.j2 
q!
ls
cd ..
ls
cd templates/
ls
vi jura.com.db.j2 
cat jura.com.db.j2 
ls
cd /var/
ls
cd
cd ansible-jinja2-dns-HA/
ls
cd templates/
ls
cd ..
cd vars/
ls
vi local.yml 
vi common.yml
vi local.yml 
ls
cd ..
cd templates/
vi named.conf.local.j2 
cd ../vars/
ls
mv common.yml commons.yml 
ls
vi commons.yml 
cd ..
ls
vi dns-config.yml 
ls
cd vars/
ls
cd ..
ansible-playbook dns-config.yml 
ls
cat vars/local.yml 
vi dns-config.yml 
ansible-playbook dns-config.yml 
cat vars/local.yml 
cat vars/commons.yml 
cd templates/
ls
vi named.conf.local.j2 
cd ..
cat vars/commons.yml 
cat dns-config.yml 
vi vars/commons.yml 
ansible-playbook dns-config.yml 
ls
cd vars/
cat ../templates/jura.com.db.j2 
ls
cd ..
ls
cd vars/
ls
vi commons.yml 
ls
cat local.yml 
cd ..
ls
cd templates/
ls
cd ..
ls
cd vars/
ls
vi local.yml 
ls
vi commons.yml 
ls
cd ..
ls
cd templates/
ls
vi named.conf.options.j2 
ls
cd ..
ls
vi vars/commons.yml 
ls
cd templates/
ls
vi named.conf.options.j2 
vi named.conf.local.j2 
ls
cd ..
ls
mkdir unattended_upgrades
cd unattended_upgrades/
vi hosts
cat<<EOF>>inventory.ini
an-node1 ansible_host=10.10.8.4
EOF

mkdir unattended_upgrades
cd unattended_upgrades
mkdir roles
ls
cd ..
ls
rm -rf unattended_upgrades/
ls
mkdir roles
cat hosts 
ls
ansible-galaxy init unattended_upgrades --init-path ./roles
ls
cd roles/
ls
cd unattended_upgrades/
ls
ls -al
cd ..
ls
cd ..
ls -al
ls
cd roles/
roles/unattended_upgrades/templates/20auto-upgrades.j2
cd ..
touch roles/unattended_upgrades/templates/20auto-upgrades.j2
ls
touch roles/unattended_upgrades/templates/50unattended-upgrades.j2
ls
cd roles/
vi main.yml
ls
cd unattended_upgrades/
ls
cd templates/
ls
vi 50unattended-upgrades.j2 
vi 20auto-upgrades.j2 
ls
cd ..
cd tasks/
ls
vi main.yml 
ls
cd ..
ls
vi site.yml
ls
cd ..
ls
mv main.yml unattended_upgrades/
ls
cd main.yml
ls
cd unattended_upgrades/
ls
ansible-playbook site.yml -i inventory.ini
ansible-playbook site.yml -i hosts
ansible-playbook site.yml -i ../../hosts
ls
mv ~/unattended_upgrades/roles/unattended_upgrades/site.yml ~/unattended_upgrades/
ansible-playbook site.yml -i ../../hosts
ls
cd ..
ls
cd ..
ls
ansible-playbook site.yml -i ../../hosts
ansible-playbook site.yml -i hosts
cd
ls
mkdir new_infra_project
cd new_infra_project
cat<<EOF>>inventory.ini
an-node2 ansible_host=10.10.8.5
EOF

ls
cat << EOF > site.yml
---
- name: Configure Web Servers
  hosts: an-node2
  become: true
  roles:
    - role: unattended_upgrades
      vars:
        unattended_mail_to: "web-admins@example.com"
        unattended_reboot_time: "04:00"

- name: Configure Database Servers
  hosts: an-node2
  become: true
  roles:
    - role: unattended_upgrades
      vars:
        unattended_mail_to: "db-admins@example.com"
        unattended_reboot_time: "02:00"
EOF

cat site.yml 
cat<< EOF > ansible.cfg
[defaults]
inventory = ./inventory.ini
# 이전에 롤을 만들었던 디렉터리를 roles_path에 추가
roles_path = ../unattended_upgrades/roles
EOF

cat ansible.cfg 
ls
cat site.yml 
ls
cat inventory.ini 
cat ansible.cfg 
vi inventory.ini 
vi site.yml 
ansible-playbook site.yml
ansible-playbook site.yml -i inventory.ini
ls
cat inventory.ini 
vi site.yml 
ansible-playbook site.yml -i inventory.ini
ls
cat ansible.cfg 
ls
cat site.yml 
ls
cat ansible.cfg 
ls
cat site.yml 
ls
cd ..
ls
cd unattended_upgrades/
ls
cd roles/
ls
cd unattended_upgrades/
ls
cat main.yml 
cd 
ls
cd new_infra_project/
ls
ansible-playbook  site.yml -i inventory.ini 
ls
tree -L 3 ../unattended_upgrades/
tree -L ../unattended_upgrades/
tree 
apt install tree
sudo apt install tree
ls
tree
tree -L 3 ../unattended_upgrades/
cd ../unattended_upgrades/
ls
cd roles/
history
ls
cd unattended_upgrades/
cd ..
cd .
cd ..
tree -L 3 roles/
cd ..
mkdir test
cd test
ls
mkdir ansible-jinja2
cd ansible-jinja2/
ls
vi site.yml
mkdir templates
cd templates/
cat << EOF > index.html.j2
<!DOCTYPE html>
<html>
<head>
    <title>{{ title }}</title>
</head>
<body>
    <h1>{{ header }}</h1>
    <p>{{ message }}</p>
    <ul>
    {% for item in items %}
        <li>{{ item }}</li>
    {% endfor %}
    </ul>
</body>
</html>
EOF

ls
vi inventory.ini
ls
mv inventory.ini ../
cd ..
ls
vi site.yml 
ls
ansible-playbook -i inventory.ini site.yml 
ls
vi inventory.ini 
ls
vi site.yml 
ls
ansible-playbook -i inventory.ini site.yml 
ls
cat templates/
cd templates/
cat index.html.j2 
cd ..
ls
cat site.yml 
ansible -m shell -a 'curl http://webswervers'
ansible -m shell -a 'curl http://webservers'
ansible -m shell -a 'curl http://node1'
ls
vi inventory.ini 
ansible -m shell -a 'curl http://node1'
clear
ansible -m shell -a 'curl http://node1'
ansible webservers -m shell -a 'curl http://node1'
ansible node1 -m shell -a 'curl http://node1'
ansible webservers -m shell -a 'curl http://node1'
cat inventory.ini 
ls
vi inventory.ini 
ansible webservers -m shell -a 'curl http://node1'
ansible no[Bde1 -m shell -a 'curl http://node1'
ansible webservers -i inventory.ini -m shell -a 'curl http://localhost'
cd ..
ls
mkdir ansible-wordpress
ls
cd ansible-wordpress/
ls
outch ansible.cfg hosts requirements.yml playbook.yml
toutch ansible.cfg hosts requirements.yml playbook.yml
touch ansible.cfg hosts requirements.yml playbook.yml
ls
mkdir templates
touch templates/wordpress.conf.j2 templates/wp-config.php.j2
cat << EOF > ansible.cfg 
[defaults]
inventory=./hosts
remote_user=jura_m
host_key_checking=false

[privillege_escalation]
become=true
become_method=sudo
become_user=root
become_ask_pass=false
EOF

cat ansible.cfg 
vi ansible.cfg [H
vi ansible.cfg 
ls
cat hosts 
cat << EOF > hosts
[web_servers]
an-node1 ansible_host=10.10.8.4

[control_node]
an-master ansible_host=10.10.8.3 ansible_connection=local

[all:children]
web_servers
control_node

[all:vars]
ansible_ssh_private_key_file=~/.ssh/id_rsa
EOF

ls
cd templates/
ls
cd ..
ls
cat <<EOF> requirements.yml
---
roles:

ls
vi requirements.yml 
ls
vi playbook.yml 
ls
ansible-playbook --syntax-check playbook.yml 
ls
cd templates/
ls
vi wp-config.php.j2 
vi wordpress.conf.j2 
ls
cd ..
sl
ls
cat ansible.cfg 
ls
cat hosts 
ls
cat playbook.yml 
ls
ansible-galaxy install -r requirements.yml 
cat requirements.yml 
ansible-playbook -i hosts playbook.yml
ls
vi playbook.yml 
ls
vi cleanup.yml
cat cleanup.yml
wq!
ls
ansible-playbook --syntax-check cleanup.yml 
ansible-playbook -i hosts cleanup.yml
ls
ansible-playbook -i hosts playbook.yml 
ansible-playbook -i hosts cleanup.yml
ls
cd ..
ls
cd ..
ls
cd test
ls
cd ansible-
cd ansible-wordpress/
ls
cat ansible.cfg 
cat hosts
ls
vi ansible.cfg 
cd ..
cd ansible-wordpress/
cat ansible.cfg
cat hosts 
cat playbook.yml 
ls
cd ..
ls
cd ..
ls
cat ansible
cat ansible.cfg 
ls
cd test
ls
cd ansible-wordpress/
ls
cp hosts ../../
ls
vi hosts 
cd
ls
ls -al
cd ..
ls
cd jura_m/
ls
git add .
git commit -m "second push commit"
git push origin main
ls
cd test
ls
cd ..
cd toPlaybook/
ls
cat userANDfile.yml 
ls
cd ..
ls
mv new_infra_project/ test/
mv unattended_upgrades/ test
cd test
ls
cd ..
ls
mv ansible-dictionary/ test
mv ansible-jinja2-dns-HA/ jura-ansible-dnsHA
ls
mv userAndFile/ jura-ansible-userADD
ls
cd jura-ansible-
ls
cd jura-ansible-userADD/
ls
cd ..
ls
cd ansible-LAB/
ls
cd ..
ls
mv ansible-LAB/ test
ls
cd toPlaybook/
ls
cd ..
cd jura-ansible-
cd jura-ansible-userADD/
ls
cat userANDfile.yml 
cd ..
ls
cd toPlaybook/
cat userANDfile.yml
ls
cd ..
ls
cd jura-ansible-userADD/
ls
cat ansible.cfg 
cat hosts 
cd ..
ls
cd toPlaybook/
ls
cat userANDfile.yml 
vi userANDfile.yml 
ls
cd ..
ls
rm -rf jura-ansible-userADD/
mv toPlaybook/ jura-ansible-useradd
ls
cd ansible-nginx
ls
cat playbook.yml 
s
ls
cd ..
ls
mv ansible-nginx test
cd ansible-nginx-pjt/
ls
cat site.yml
cat common-hardening.yml 
d ..
cd ..
ls
mv ansible-nginx-pjt/ test
cd test
ls
cd ansible-LAB
ls
cat installApach.yml 
ls
mv installApach.yml ../
cat update_hosts.yml 
ls
cd ..
ls
mv installApach.yml ..
ls
cd ..
ls
mv installApach.yml jura-ansible-useradd/
ls
cd test
cd ..
ls
mv jura-ansible-useradd/ jura-ansible-etc
ls
cd test/
ls
cd ..
ls
git .
git add .
git common -m "third push commit"
git commit -m "third push commit"
git push origin main 
ls
mv test-ansible
mv test test-ansible
ls
git add test-ansible/
git commit -m "directory name change commit"
git push origin main 
ls
cd test-ansible/
ls
cd ..
git rm test
ls
git rm -r test
ls
git commmit -m "remove test directory commit"
git commit -m "remove test directory commit"
git push origin main 
cd test-ansible/
ls
cd ansible-jinja2/
ls
cd ..
cd ansible-wordpress/
ls
vi hosts
ls
cat playbook.yml 
ls
vi requirements.yml 
ls
vi playbook.yml 
cp playbook.yml playbookDb.yml 
mv playbook.yml playbookWeb.yml 
ls
mv playbookWeb.yml webPlaybook.yml
ls
mv playbookDb.yml dbPlaybook.yml 
ls
vi webPlaybook.yml 
vi dbPlaybook.yml 
cat dbPlaybook.yml 
ls
vi servers.yml
ls
cat webPlaybook.yml 
ls
cat hosts 
ls
vi webPlaybook.yml 
vi dbPlaybook.yml 
ls
cd templates/
ls
vi wp-config.php.j2 
ls
cat wordpress.conf.j2 
ls
cd ..
ls
vi hosts 
ls
vi cleanup.yml 
ls
ansible-playbook --syntax-check requirements.yml 
ls
ansible-playbook --syntax-check requirements.yml 
ansible-playbook --syntax-check dbPlaybook.yml 
ansible-playbook --syntax-check webPlaybook.yml 
vi webPlaybook.yml 
cat requirements.yml 
ls
cd ..
ls
cd ansible-wordpress/
ls
ls -al
cd templates/
ls
ls -al
cd ..
cd
ls -al
cd .ansible/
ls
cd roles/
ls
ls -al
cd
ls
cd test-ansible/
cd ansible-wordpress/
ls
cat webPlaybook.yml 
ls
cd templates/
ls
cat wordpress.conf.j2 
ls
vi wp-config.php.j2 
ls
cd ..
ls
cat requirements.yml 
ls
cat webPlaybook.yml 
vi webPlaybook.yml 
ls
cd templates/
ls
vi wp-config.php.j2 
ls
vi wordpress.conf.j2 
cd ..
ls
cat hosts
ls
cd templates/
ls
vi wp-config.php.j2 
cd ..
ls
cd ansible-wordpress/
ls
cat servers.yml 
ansible-playbook -i hosts servers.yml 
ls
cd ..
cd ansible-wordpress/
cat dbPlaybook.yml 
ls
cat servers.yml 
ls
vi dbPlaybook.yml 
ls
ansible-playbook cleanup.yml 
ls
ansible-playbook servers.yml
ls
ansible-playbook cleanup.yml 
ls
cat dbPlaybook.yml 
ls
vi dbPlaybook.yml
ansible-playbook servers.yml
vi dbPlaybook.yml
ls
ansible-playbook -i hosts cleanup.yml 
ansible-playbook -i hosts servers.yml 
ls
cd templates/
ls
cd ..
ls
cat dbPlaybook.yml 
ls
ansible-playbook -i hosts cleanup.yml 
ls
vi dbPlaybook.yml 
cat dbPlaybook.yml 
vi dbPlaybook.yml 
ansible-playbook -i hosts servers.yml 
ls
mv dbPlaybook.yml dbPlaybook.yml.or
vi dbPlaybook.yml
ls
ansible-playbook -i hosts cleanup.yml
ansible-playbook -i hosts servers.yml 
ls
cd test-ansible/
ls
cd ansible-
cd ansible-wordpress/
ls
cat wePls
cat webPlaybook.yml 
ansible-vault create password.yml
cat password.yml 
vi password.yml 
ansible-vault edit password.yml 

ansible-vault view password.yml 
ansible-playbook --help
ansible-playbook password.yml 
ls
vi webPlaybook.yml 
ls
vi webPlaybook.yml 
ansible-vault edit password.yml 
ansible-playbook --syntax-check password.yml -J
ls
ansible-vault 
ansible-vault view password.yml 
ansible-playbook -C --ask-vaul
ls
ansible-playbook -C --ask-vault-pass servers.yml
vi webPlaybook.yml 
ansible-playbook -C --ask-vault-pass servers.yml
vi webPlaybook.yml 
ansible-playbook -C --ask-vault-pass servers.yml
ls
cat servers.yml 
cat requirements.yml 
ls
ansible-vault decrypt password.yml 
vi password.yml
ls
ansible-playbook cleanup.yml
ansible-playbook  servers.yml
history 
ls
cd
ls
cd test-ansible/
ls
cd ansible-LAB/
ansible-console 
ls
vi hosts
ansible-console 
ls
vi hosts 
ls
cp hosts hosts.ori
ls
vi hosts
mv hosts.ori hosts.dynamic
vi hosts.dynamic 
ls
ansible-inventory -i hosts --list
ansible-inventory -i inventory.yml --graph
ansible-inventory -i hosts --graph
ansible -i inventory.yml all -m ping
ansible -i hosts all -m ping
ls
ansible -i hosts.dynamic all -m ping
ansible-inventory -i hosts.dynamic 
ansible-inventory -i hosts.dynamic --list
ansible -i inventory.yml all -m ping
ansible -i hosts.dynamic all -m ping
ls
vi hosts.dynamic 
l
ansible-pull 
ansible-doc
ansible-doc -l
ansible-galaxy list
ansible-galaxy role search mariadb
ansible-galaxy install xolyu.mariadb
ansible-galaxy list
ansible-galaxy info xolyu.mariadb
ls
cd ..
ls
cd ..
ls
mkdir jura-setup-project
ls
cd jura-setup-project/
ls
ansible-galaxy init role defaultSetup
ls
ansible-galaxy init
ansible-galaxy init baseSettings --init-path ./
ls
cd baseSettings/
ls
cat README.md 
ls
cd ..
ls
ls -al
cd baseSettings/
ls -al
cd ..
ls
mv baseSettings initSetup
ls
cd initSetup/
ls
cd ..
ls
tree -L 3 initSetup/
ls
mkdir roles
ls
ansible-galaxy init --help
ansible-galaxy init webInitSetup --init-path roles/
ansible-galaxy init webSetup --init-path roles/
ansible-galaxy init monitoringSetup --init-path roles/
ansible-galaxy init userAddSetting --init-path roles/
ansible-galaxy init webserverSetup --init-path roles/
ansible-galaxy init dbserverSetup --init-path roles/
ansible-galaxy init securitySetting --init-path roles/
ls
cd roles/
ls
rm -rf webSetup/
rm -rf webInitSetup/Setup/
ls
rm -rf webInitSetup
ls
cd ..
ansible-galaxy init superuserAddSetting --init-path roles/
ls
cd roles/
ls
ls -al
ls
cd jura-setup-project/
ls
cd ..
ls
tree -L 7 jura-setup-project/
ls
ansible-galaxy init role --help
history
ansible-galaxy init securitySetting --init-path .
ls
cd securitySetting/
ls -al
cd /
cd
ls
ls -al
ls
ls -al
cd .ansible/
ls
cd roles/
ls
tree -L 5 geerlingguy.mysql/
cd
cd test-ansible/
ls
cd ansible-wordpress/
ls
cat webPlaybook.yml 
vi webPlaybook.yml 
ls
cat requirements.yml 
cat servers.yml 
cat dbPlaybook.yml
vi dbPlaybook.yml
ls
cat ansible.cfg 
cat hosts 
vi webPlaybook.yml 
ls
cd ..
ls
cd ..
ls
cd jura-setup-project/
ls
vi hosts
ls
cd ..
ls
cat hosts
ls
cd test-ansible/
ls
cd ansible-LAB/
ls
cp hosts.dynamic ~/hosts.ori
cd
ls
cat hosts.ori
cat hosts
cat hosts.ori
ls
cat hosts.ori
cat ansible.cfg
cd jura-setup-project/
vi hosts
ls
vi hosts
ls
mv hosts hosts.yml
vi hosts.yml
ls
cd
ls
cat ansible.cfg
ls
cd jura-ansible-
cd jura-setup-project/
ls
cat hosts.yml 
vi hosts.yml 
ls
vi ansible.cfg
cat hosts.yml 
vi ansible.cfg
ls
vi ansible.cfg 
ls
mv hosts.yml inventory.yml
ls
ansible-playbook inventory.yml 
ls
vi ansible.cfg 
ls
ansible-inventory -i inventory.yml --list
ls
vi inventory.yml 
ansible-inventory -i inventory.yml --list
ls
cat ansible.cfg 
cat inventory.yml 
ansible-inventory -i inventory.yml --list
ls
vi ansible.cfg 
vi inventory.yml 
ansible-inventory -i inventory.yml --list
vi ansible.cfg 
ls
vi inventory.yml 
ansible-inventory -i inventory.yml --list
ls
ls -al
cd
ls -al
ls
cd jura-setup-project/
ls
vi inventory.yml 
ansible-inventory -i inventory.yml --list
vi inventory.yml 
ansible-inventory -i inventory.yml --list
ls
cd ..
ls
mv hosts.ori hosts.dyn
ls
cat hosts.dyn 
ls
cd jura-setup-project/
ls
cd initSetup/
ls
cd ..
ls
cd ..
ls
tree -L 4 jura-setup-project/
ls
cd jura-setup-project/
ls
touch summary-web.yml
touch summary-monitoring.yml
touch summary-db.yml
cd roles/
ls
cd ..
ls
touch summary-useradd.yml
ls
rm -rf summary-useradd.yml 
ls
cd initSetup/
ls
vi README.md 
ls
cd jura-setup-project/
ls
mkdir tests
ls
cp ansible.cfg tests
ls
cp inventory.yml tests/
ls
cd initSetup/
ls
cd
cd jura-setup-project/
ls
cd tests
ls
cd ..
cd 
ls
git add jura-setup-project/
git commit -m "ANSIBLE project : os setting and service setup First push commit"
git push origin master
git push origin main
ls
cd jura-setup-project/
ls
cd ..
cd jura-setup-project/
ls
cd tests/
ls
vi cd ..
ls
ls -al
cd ..
ls
cd roles/
ls
cd. .
cd ..
ls
cd tests
vi initsetup.yml
ls
cat initsetup.yml 
cat inventory.yml 
ls
vi ansible.cf
ls
vi ansible.cfg 
cat ansible.cfg 
ls
vi inventory.yml 
ansible-inventory -i inventory.yml --list
ansible-inventory -i inventory.yml --graph
ls
cat inventory.yml 
ls
cp inventory.yml inventory.yml.ori
ls
mv inventory.yml ..
ls
mkdir fin
mv inventory.yml.ori  fin/
ls
cd ..
ls
cd initSetup/
ls
cd ..
cat inventory.yml 
ls
cd tests/
ls
vi util-install.yml
cat initsetup.yml 
vi util-install.yml 
ls
vi initsetup.yml 
ls
mv initsetup.yml ..
mv util-install.yml ..
ls
cd ..
cd fin
cd tests/
ls
cd fin
ls
cp inventory.yml.ori ../inventory.yml
ls
cd ..
ls
cd ..
ls
mv inventory.yml initSetup/
ls
mv initsetup.yml initSetup/
mv util-install.yml initSetup/
ls
cd initSetup/
ls
cp inventory.yml ..
ls
cd ..
ls
cp ansible.cfg initSetup/
ls
cd initSetup/
ls
cd ..
ls
tree -L 3 .
ls
cd initSetup/
ls
cat initsetup.yml 
ls
vi util-install.yml 
ls
vi util-install.yml 
ls
ansible-playbook util-install.yml 
ls
ansible-playbook --syntax-check util-install.yml -i initsetup.yml 
ls
cat ansible.cfg 
ansible-inventory -i inventory.yml --list
ls
ansible-playbook --syntax-check  util-install.yml
ls
vi initsetup.yml 
vi inventory.yml 
ls
vi inventory.yml 
ansible-playbook --syntax-check  util-install.yml
vi util-install.yml 
vi inventory.yml 
ansible-playbook --syntax-check  util-install.yml
ls
cd ..
ls
vi inventory.yml 
ls
cat inventory.yml 
ls
cd initSetup/
ls
cp util-install.yml cleanup.yml
ls
vi cleanup.yml
ansible-playbook --syntax-check cleanup.yml
vi cleanup.yml 
ls
vi inventory.yml 
ls
vi cleanup.yml 
vi inventory.yml 
ls
vi initsetup.yml 
vi util-install.yml 
ansible-playbook util-install.yml 
vi util-install.yml 
ls
cat inventory.yml 
ls
vi util-install.yml 
ansible-playbook util-install.yml 
vi util-install.yml 
ansible-playbook util-install.yml 
ls
vi cleanup.yml 
ls
ansible-playbook cleanup.yml 
vi cleanup.yml 
ansible-playbook --syntax-check cleanup.yml 
ansible-playbook cleanup.yml 
ls
vi 
ls
cd jura-setup-project/
ls
cd initSetup/
ls
cat util-install.yml 
ls
cd templates/
ls
cd ..
cat util-install.yml 
cd ..
ls
cd initSetup/
ansible-playbook 
apt list docker.io
ls
cd jura-setup-project/
ls
cd initSetup/
ls
cat initsetup.yml 
cat util-install.yml
ansible-playbook util-install.yml 
ls
vi inventory.yml 
cat initsetup.yml 
vi util-install.yml
ls
mv util-install.yml tasks
ls
cd ..
cd initSetup/
ls
vi initsetup.yml 
ls
ansible-playbook initsetup.yml 
vi initsetup.yml 
ansible-playbook initsetup.yml 
vi initsetup.yml 
ansible-playbook initsetup.yml 
vi initsetup.yml 
ansible-playbook initsetup.yml 
ls
vi util-setting.yml
ls
cd tasks/
ls
cat util-install.yml 
ls
cat main.yml 
ls
vi util-install.yml 
ls
cd ..
ls
vi util-setting.yml
clear
ls
clear
cat tasks/util-install.yml 
vi util-setting.yml 
sed -i s/gather_facts: ture/gather_facts: false/
sed -e s/gather_facts: ture/gather_facts: false/
sed -i %s/gather_facts: ture/gather_facts: false/
sed -i ^s/gather_facts: ture/gather_facts: false/
sed -i s/gather_facts: true/gather_facts: false/
sed -i s/gather_facts: true/gather_facts: false/ tasks/util-install.yml 
sed -i 's/gather_facts: true/gather_facts: false/' tasks/util-install.yml 
cat tasks/util-install.yml 
vi util-setting.yml 
ls
ansible-playbook --syntax-check util-setting.yml 
cat util-setting.yml 
ls
ansible-playbook util-setting.yml 
ls
vi util-setting.yml 
ansible-playbook util-setting.yml 
vi initsetup.yml 
ls
mv util-setting.yml tasks/
ls
cat ls
ls
ansible-playbook initsetup.yml 
ls
cd tasks/
ls
mv util-setting.yml ..
cd ..
ls
vi util-setting.yml 
ls
ansible-playbook --syntax-check util-setting.yml 
