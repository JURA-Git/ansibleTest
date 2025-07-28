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
   