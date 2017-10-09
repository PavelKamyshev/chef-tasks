#########if you want install chef server uncomment this#########
#echo "================ Download and install deb package ================"
#sudo apt-get -y update
#sudo apt-get -y install ntp
#sudo service ntp enable
#sudo service ntp start
#wget -q https://packages.chef.io/files/stable/chef-server/12.16.14/ubuntu/14.04/chef-server-core_12.16.14-1_amd64.deb  --progress=bar
#sudo dpkg -i 'chef-server-core_12.16.14-1_amd64.deb'
#sudo chef-server-ctl reconfigure
#mkdir -p /home/vagrant/.chef
#sudo chef-server-ctl user-create kamyshev Pavel Kamyshev Pavel_Kamyshev@epam.com 'admin51294' --filename /home/vagrant/.chef/kamyshev.pem
#sudo chef-server-ctl org-create my_org 'My Organization' --association_user kamyshev --filename /home/vagrant/.chef/my_org.pem
#sudo chef-server-ctl install chef-manage
#sudo chef-server-ctl reconfigure
#sudo chef-manage-ctl reconfigure --accept-license

echo "================ Download and install deb chef-client package ================"
wget https://packages.chef.io/files/stable/chef/13.5.3/ubuntu/14.04/chef_13.5.3-1_amd64.deb
sudo dpkg -i 'chef_13.5.3-1_amd64.deb'
echo "================ Download and install deb chef-dk package ================"
wget https://packages.chef.io/files/stable/chefdk/2.3.4/ubuntu/14.04/chefdk_2.3.4-1_amd64.deb
sudo dpkg -i 'chefdk_2.3.4-1_amd64.deb'
sudo apt-get update
sudo apt-get -y install git
sudo apt-get -y install unzip
mkdir /root/.chef
mkdir /root/chef_cookbooks
echo "=============================== Dowloading files and copy files ================================="
cp /vagrant/solo.rb /root/.chef/
cp /vagrant/runlist.json /root/.chef/
wget -P /root/ https://github.com/chef-cookbooks/chef_nginx/archive/master.zip
wget -P /root/ https://github.com/chef-cookbooks/iptables/archive/master.zip
unzip /root/master.zip -d /root
unzip /root/master.zip.1 -d /root

##########################
#cd chef_nginx-master/ выполняем там команды
#berks init Отвечаем "a"
#berks install
#berks package
#tar -xvzf cookbooks-*.tar.gz -C /root
#cd iptables-master
#berks init Отвечаем "a"
#berks install
#berks package
#tar -xvzf cookbooks-*.tar.gz -C /root
#mv ./cookbooks/* ./chef_cookbooks/
#chef-solo -c /root/.chef/solo.rb
#curl -IL localhost
###########################