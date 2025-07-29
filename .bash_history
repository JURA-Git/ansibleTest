ansible node1 -m shell "systemctl status apache2"
ansible node1 -m shell 'systemctl status apache2'
ansible node1 -m shell 'sudo systemctl status apache2'
ansible node1 -m shell 'systemctl status apache2' -b
ansible node1 -m shell -a 'systemctl is-active apache2' -b
ls
vi installApach.yml 
ls
vi installApach.yml 
ansible-playbook installApach.yml 
vi installApach.yml 
ansible-playbook installApach.yml 
vi installApach.yml 
ansible-playbook installApach.yml 
vi installApach.yml 
ls
vi installApach.yml 
ansible-playbook installApach.yml 
vi installApach.yml 
ansible-playbook installApach.yml 
vi installApach.yml 
ansible-playbook installApach.yml 
vi installApach.yml 
ansible-playbook installApach.yml 
vi installApach.yml 
ansible-playbook installApach.yml 
clear
ls
vi test
mv test test.sh
source test.sh 
ls
cd ansibleLab/
ls
vi test.sh 
ls
source test.sh 
ls
cd ansibleLab/
ls
cat hosts
cat /etc/hosts
ls
cat update_hosts.yml
ls
cp update_hosts.yml fact.yml
vi fact.yml 
ansible-playbook test.sh 
clear
ls
ansible-playbook fact.yml
vi fact.yml 
ansible-playbook fact.yml
vi fact.yml 
ansible-playbook fact.yml
vi fact.yml 
ansible-playbook fact.yml
vi fact.yml 
ansible-playbook fact.yml
vi fact.yml 
ls
cat hosts 
cat update_hosts.yml 
cat /etc/hosts
ls
cat ansible.cfg 
clear
for i in {3..7};do ping -4 10.10.8.${i}; done
ansible --help
for i in {4..7};do sudo  jura_m@10.10.8.${i}; done
cd
ls
cd ansibleLab/
ansible-inventory list
ansible-inventory -l
ansible-inventory --list
ansible node1 -m user -a "name=jura1"
ansible node1 -m shell -a "tail -n5 /etc/passwd"
ansible node1 -m shell -a "tail -n5 /etc/shadow"
ansible node1 -m user -a "name=jura1 update_password=always" password={{ 'dkagh1.'|password_hash{'sha512'} }}"
.
;
ansible node1 -m user -a "name=jura1 update_password=always password={{ 'dkagh1.'|password_hash{'sha512'} }}"
ansible node1 -m user -a "name=jura1 update_password=always password={{ 'dkagh1.'|password_hash('sha512') }}"
ssh jura1@10.10.8.3
ansible node1 -m shell -a "tail -n5 /etc/shadow"
ansible webservers -m shell -a "echo 'jura1   ALL=(ALL)   NOPASSWD:ALL' > /etc/sudoers.d/jura1"
ansible webservers -m copy -a "content='jura1 ALL=(ALL) NOPASSWD: ALL' dest=/etc/sudoers.d/jura1 mode=0644 validate='/usr/sbin/visudo -c -f \'%s\''"
ansible node1 -m user -a "name=jura1 update_password=always password={{ 'dkagh1.' | password_hash('sha512') }}"
ansible node1 -m shell -a "echo 'jura1   ALL=(ALL)   NOPASSWD:ALL' > /etc/sudoers.d/jura1"
ansible node1 -m copy -a "content='jura1 ALL=(ALL) NOPASSWD: ALL' dest=/etc/sudoers.d/jura1 mode=0644 validate='/usr/sbin/visudo -c -f \'%s\''"
ssh jura1@10.10.8.3
ansible node1 -m user -a "name=jura1 update_password=always password={{ 'dkagh1.' | password_hash('sha512') }}"
ssh jura1@10.10.8.3
ansible node1 -m user -a "name=jura1 state=absent remove=yes"
ansible node1 -m shell -a "cat /etc/shadow"
ansible node1 -m user -a "name=jura1 state=present" 
ansible node1 -m user -a "name=jura1 state=absent remove=yes"
ansible an-node1 -m service -a "name=apache2 state=started"
ansible node1 -m service -a "name=apache2 state=started"
ansible node1 -m service -a "name=apache2 state=stoped"
ansible node1 -m service -a "name=apache2 state=stop"
ansible node1 -m service -a "name=apache2 state=stoped"
ansible node1 -m service -a "name=apache2 state=stopped"
ansible node1 -m service -a "name=apache2 state=restarted"
ansible node1 -m service -a "name=apache2 state=status"
ansible node1 -m service -a "name=apache2 state=distabled"
ansible node1 -m setup -a "gather_subnet=all"
ansible node1 -m setup -a "gather_subset=all"
ansible node1 -m setup -a "gather_subset=ansible_all_ipv4_"
ansible node1 -m setup -a "gather_subset=ansible_all_ipv4_addresses"
ansible node1 -m setup -a "ansible_all_ipv4_addresses"
ansible node1 -m setup -a "all_ipv4_addresses"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses"
ansible node1 -m setup -a "gather_subset=all"
ansible node1 -m setup -a "gather_subset=network"
ansible node1 -m setup -a "gather_subset=network filter=ansible_architecture"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses filter=ansible_architecture"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresse"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses filter=python"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses filter=pythond"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses ffilter=pythond"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses filter=python"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses filter=python filter=type"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses filter=python.type"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses filter=python filter=version_info"
ansible node1 -m setup -a 'filter=ansible_python'
ansible node1 -m debug -a 'var=ansible_python.type'
ansible node1 -m debug -a 'var=ansible_facts.ansible_python'
ansible node1 -m debug -a 'var=ansible_facts.ansible_python.type'
ansible node1 -m debug -a 'var=facts.ansible_python.type'
ansible node1 -m debug -a 'var=ansible_python.type'
ansible node1 -m debug -a 'var=ansible_facts.ansible_python.type'
ansible node1 -m setup
ansible node1 -m debug -a 'var=ansible_facts.ansible_python.type'
ansible node1 -m setup
ansible node1 -m debug -a 'var=ansible_facts.ansible_python.type'
history
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses filter=ansible_architecture"
ansible node1 -m setup -a "filter=ansible_architecture"
ansible node1 -m setup -a "gather_subset=all_ipv4_addresses filter=ansible_architecture"ansible node1 -m copy -a "src=/etc/hosts dest=/tmp/hosts
"
ansible node1 -m copy -a "src=/etc/hosts dest=/tmp/hosts"
ansible node1 -m fetch -a "sr/etc/passwd dest=. flat=yes"
ansible node1 -m fetch -a "src=/etc/passwd dest=. flat=yes"
ansible node1 -m fetch -a "src=/etc/passwd dest=/root flat=yes"
ansible node1 -m fetch -a "src=/etc/passwd dest=/root/ flat=yes"
ansible node1 -m fetch -a "src=/home/jura_m/123 dest=/root/ flat=yes"
sudo ansible node1 -m fetch -a "src=/home/jura_m/123 dest=/root/ flat=yes"
sudo ansible node1 -m fetch -a "src=/home/jura_m/123 dest=/home/jura_m/ flat=yes"
sudo ansible node1 -m fetch -a "src=~/123 dest=~/ flat=yes"
ansible node1 -m group -a "name=Angels state=present"
ansible node1 -m user -a "name=user02 groups=angels"
ansible node1 -m user -a "name=user02 groups=Angels"
ansible node1 -m user -a "name=user2 generate_ssh_key=yes ssh_key_bits=2048 ssh_key_file=.ssh/id_rsa1"

ls
cd ansibleLab/
cd ..
ls
mkdir ansible-nginx
cd ansible
cd ansible-nginx/
ls
cp ../ansibleLab/ansible.cfg 
cp ../ansibleLab/ansible.cfg .
cp ../ansibleLab/hosts .
cat ansible.cfg 
vi hosts 
ansible-inventory --lis
ls
vi playbook.yml
ansible-playbook --syntax-check playbook.yml
vi hosts 
vi playbook.yml --syn
vi playbook.yml
ansible-playbook --syntax-check playbook.yml
ansible-playbook playbook.yml 

vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
ansible-playbook playbook.yml 
curl http://10.10.8.4
curl http://node1
curl http://node2
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
vi playbook.yml
cat playbook.yml 
ansible-playbook --syntax-check playbook.yml 
ansible-playbook playbook.yml 
curl http://10.10.8.6
clear
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
vi playbook.yml
rm -rf playbook.yml 
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
ansible-playbook playbook.yml 
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
ansible-playbook playbook.yml 
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
ansible-playbook playbook.yml 
ls
curl http://node5
curl http://node3
vi playbook.yml
ansible-playbook playbook.yml 
curl http://node3
vi playbook.yml
curl http://node3
ansible-playbook playbook.yml 
curl http://node3
vi playbook.yml
ansible-playbook playbook.yml 
vi playbook.yml
ansible-playbook playbook.yml 
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
ansible-playbook playbook.yml 
vi playbook.yml
ansible-playbook playbook.yml 
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
vi playbook.yml
ansible-playbook playbook.yml 
vi playbook.yml
ansible-playbook playbook.yml 
vi playbook.yml
ansible-playbook --syntax-check playbook.yml 
vi playbook.yml
ansible-playbook playbook.yml 
vi playbook.yml
ls
cd ..
ls
mkdir toPlaybook
cd ansible-nginx/
ls
cp hosts ../toPlaybook/
cp ansible.cfg ../toPlaybook/
cd ..
ls
cd toPlaybook/
ls
vi hosts 
cat ansible.cfg 
vi ansible.cfg 
ls
ansible-inventory --list
ls
vi userANDfile.yml
ls
cat ../ansibleLab/fact.yml
ls
vi userANDfile.yml 

vi userANDfile.yml 
cat hosts 
vi userANDfile.yml 
cat hosts 
vi userANDfile.yml 
cat ../ansibleLab/fact.yml
vi userANDfile.yml 
cat ../ansible-nginx/
cat ../ansible-nginx/playbook.yml 
vi userANDfile.yml 
cat ../ansible-nginx/playbook.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
ansible-playbook userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
ansible-playbook userANDfile.yml 
ansible node1 -m shell -a "cat /etc/passwd"
vi userANDfile.yml 
ansible-playbook --syntax-check userANDfile.yml 
ansible-playbook userANDfile.yml 
ansible node1 -m shell -a "cat /etc/passwd"
ansible node1 -m shell -a "cat /etc/groups"
ansible node1 -m shell -a "cat /etc/group"
ansible node1 -m shell -a "cat /etc/passwd"
ansible node1 -m shell -a "cat /etc/shadow"
ssh jura1@10.10.8.3
ssh jura1@10.10.8.4
vi userANDfile.yml 
   cat /etc/passwd
ls
cd toPlaybook/
ls
cat hosts 
ls
cd ..
ls
mkdir userAndFile
ls
cd userAndFile/
ls
cd. .
cd ..
ls
cd top
sl
ls
cd toPlaybook/
ls
cp hosts ../userAndFile/
cp ansible.cfg ../userAndFile/
ls
cd
cd userAndFile/
ls
cd ..
ls
cd toPlaybook/
ls
cp userANDfile.yml ../userAndFile/
ls
vi hosts 
ls
cd ..
ls
cd toPlaybook/
ls
cat ansible.cfg 
cat hosts 
ls
cat userANDfile.yml 
vi userANDfile.yml 
ansible node1 -m copy -a "content='kevin ALL=(ALL) NOPASSWD: ALL' dest=/etc/sudoers.d/kevin mode=0644 validate='/usr/sbin/visudo -cf %s'"
vi userANDfile.yml 
cat userANDfile.yml 
ls
cd ..
ls
vi ansibleLab/
cd ansibleLab/
ls
vi fact.yml 
for i in (4...7);do ping 10.10.8.${i} ;done
for i in (4..7);do ping 10.10.8.${i} ;done
for i in {4..7};do ping 10.10.8.${i} ;done
for i in {4..7};do ssh[B 10.10.8.${i} ;done
vi when_test.yml
ansible-playbook when_test.yml
mkdir files
cd files/
touch index.html
cat<<EOF>index.html
<H1> Hello Mr. John </H1>
EOF

vi user
mv user user.yml
vi pb.yml
ls
vi pb.yml
ls
cd ..
ls
cat ansible.cfg 
ls
cat hosts 
cd ..
ls
cd ansibleLab/
ls
vi hosts 
cd files/
ls
vi pb.yml 
ls
ansible all -m shell -a 'cat /etc/lsb-release'
ansible all -m shell -a ''
ansible all -m shell -a 'ls'
ls
cd ..
sl
vi hosts 
ansible all -m shell -a 'ls'
ansible all -m shell -a ''
ansible all -m shell -a 'cat /etc/lsb-realese'
ERROR! No argument passed to shell module
jura_m@server:~/ansibleLab$ ansible all -m shell -a 'cat /etc/lsb-realese'
server | FAILED | rc=1 >>
cat: /etc/lsb-realese: No such file or directorynon-zero return code
node1 | FAILED | rc=1 >>
cat: /etc/lsb-realese: No such file or directorynon-zero return code
node3 | FAILED | rc=1 >>
cat: /etc/lsb-realese: No such file or directorynon-zero return code
node2 | FAILED | rc=1 >>
cat: /etc/lsb-realese: No such file or directorynon-zero return code
node4 | FAILED | rc=1 >>
cat: /etc/lsb-realese: No such file or directorynon-zero return code
ansible all -m shell -a "echo hello"
jura_m@server:~/ansibleLab$ ansible all -m shell -a '/etc/lsb-realese'
ansible all -m shell -a '/etc/lsb-realese'
ansible all -m shell -a 'cat /etc/lsb-realese'
ansible all -m shell -a 'cat /etc/lsb-release'
ls
cd files/
ls
vi pb.yml 
ansible-playbook --syntax-check pb.yml 
ansible-playbook --syntax-check pb.yml -i hosts
ls
ansible-playbook --syntax-check pb.yml -i ../hosts
ansible-playbook pb.yml
ansible-playbook -i inventory.ini pb.yml
ansible-playbook -i ../hosts  pb.yml
ls
vi pb.yml
ansible-playbook -i ../hosts  pb.yml
ls
ansible all -m shell -a 'cat /var/www/html/test1.txtx'
vi pb.yml
ansible all -m shell -a 'cat /var/www/html/test01.txt'
ansible node1 -m shell -a 'cat /var/www/html/test01.txt'
cd ..
ansible node1 -m shell -a 'cat /var/www/html/test01.txt'
ansible node1 -m shell -a 'cat /var/www/html/test02.txt'
ansible node1 -m shell -a 'ls /var/www/html/test02.txt'
ansibl node1 -m ansible.builtin.setup | egrep dist
ansibl node1 -m ansible.builtin.setup | egrep destri
ansibl node1 -m ansible.builtin.setup | egrep dest
ansible an-node1 -m ansible.builtin.setup | egrep ansible_distribution
ansible node1 -m ansible.builtin.setup | egrep ansible_distribution
ansible node1 -m ansible.builtin.setup > builtin.setup.json
ls
cat builtin.setup.json 
ls
cd files/
cd ..
ls
cd files/
ls
cat user.yml 
ls
cat user.yml 
ls
vi pb.yml 
ls
vi pb.yml 
ls
ansible-p
ansible-playbook pb.yml 
ansible-playbook pb.yml -i ../hosts
vi pb.yml 
ls
mkdir ansible-nginx-project
cd
mkdir ans-nginx-pjt
cd ans-nginx-pjt/
vi hosts
cat<<EOF>common-hardening.yml
---
- name: Apply common hardening to all servers
  hosts: all
  become: true
  tasks:
    - name: Install UFW firewall
      ansible.builtin.apt:
        name: ufw
        state: present

    - name: Allow SSH traffic
      community.general.ufw:
        rule: allow
        name: OpenSSH

    - name: Allow HTTP traffic on webservers only
      community.general.ufw:
        rule: allow
        name: Nginx Full # 'nginx' 대신 더 일반적인 'Nginx Full' 프로필 사용
      when: inventory_hostname in groups['webservers'] # 이 조건을 추가

    - name: Enable UFW
      community.general.ufw:
        state: enabled
EOF

ls
vi common-hardening.yml 
cat<<EOF>web-deploy.yml
---
- name: Deploy Nginx web server
  hosts: webservers
  become: true
  tasks:
    - name: Install nginx
      ansible.builtin.apt:
        name: nginx
        state: present
        update_cache: yes

    - name: Start and enable nginx service
      ansible.builtin.service:
        name: nginx
        state: started
        enabled: yes
EOF

ls
cd ..
ls
cd ansibleLab/
ls
cp ansible.cfg ../ans-nginx-pjt/
cd ..
cd ans-nginx-pjt/
ls
cat<<EOF>site.yml
---
- import_playbook: common-hardening.yml
- import_playbook: web-deploy.yml
EOF

ls
cat ansible.cfg 
vi hosts 
ls
vi site.yml 
ls
ansible-playbook -i ansible.cfg site.yml 
ls
cat vi common-hardening.yml 
common-hardening.yml 
ls
vi site.yml 
vi web-deploy.yml 
ls
cat hosts 
ls
vi ansible.cfg 
ls
vi hosts
vi ansible.cfg 
ansible webservers -m ping
ansible webservers -m command -a "whoami" -b
ls
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
