ls
ls -al
sudo -i
ls
hostname
ls
usermod --help
clear
whoami
uname
host
host -a
name
hostname
hostname --help
ip add
sudo -i
cat /etc/hosts
whoami
clear
hostname
sudo -i
sl
ls
cd .ssh/
ls
clear
ls
cat authorized_keys 
clear
ls
cat authorized_keys
cd ..
clera
clear
sudo -i
ls
cd .ssh/
ls
ssh -i id_rsa jura_m@10.10.8.5
echo 'jura_m ALL=(ALL) NOPASSWD: ALL' | sudo tee /etc/sudoers.d/90-ubuntu
sudo apt install ssh
echo 'jura_m ALL=(ALL) NOPASSWD: ALL' | sudo tee /etc/sudoers.d/90-ubuntu
cat /etc/sudoers.d/

cd /etc/sudoers.d/
cat 90-ubuntu 
reboot
sudo reboot
clear
ls
clear
apt search ansible
apt list ansible
cat /etc/lsb-release
uname
uname -a
apt install ansible
sudo apt install ansible
ansible --version
ls
mkdir ansibleLab
cd ansibleLab/
touch ansible.cfg hosts
touch update_hosts.yml
ls
ansible-config --help
ls
vi ansible.cfg
ls
vi ansible.cfg 
ansible --help
ls
vi hosts 
cat hosts 
vi hosts 
ansible all -m ping
ls
cat /etc/hosts
ls
vi update_hosts.yml 
ansible-playbook update_hosts.yml
ansible all -m command -a 'cat /etc/hosts'
ansible node2 -m command -a 'cat /etc/hosts'
ainsible node1 -m shell -a 'ls /etc/hosts'
ansible  -m shell -a 'ls /etc/hosts'
ansible all -m shell -a 'ls /etc/hosts'
ansible all -m shell -a 'mkdir ~/temp'
ansible all -m shell -a 'ls -ld ~/temp'
ansible all -m shell -a 'rm -rf ~/temp'
ansible all -m shell -a 'ls -ld ~/temp'
ls
cat update_hosts.yml 
ls
vi update_hosts.yml 
ls
vi playbook_test.yml
ansible-playbook playbook_test.yml 
vi playbook_test.yml
ansible-playbook playbook_test.yml 
vi playbook_test.yml
ansible-playbook playbook_test.yml 
vi playbook_test.yml
ansible-playbook playbook_test.yml 
vi playbook_test.yml
ansible-playbook playbook_test.yml 
ls
rm playbook_test.yml 
ls
vi installApach.yml
ansible-playbook installApach.yml 
vi installApach.yml
ansible-playbook installApach.yml 
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
