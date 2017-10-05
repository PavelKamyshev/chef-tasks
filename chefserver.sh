echo "================ Download and install deb package ================"
apt-get -y update
apt-get -y install ntp
service ntp enable
service ntp start
wget -q https://packages.chef.io/files/stable/chef-server/12.16.14/ubuntu/14.04/chef-server-core_12.16.14-1_amd64.deb  --progress=bar
dpkg -i 'chef-server-core_12.16.14-1_amd64.deb'
chef-server-ctl reconfigure
mkdir -p /home/vagrant/.chef
chef-server-ctl user-create kamyshev Pavel Kamyshev Pavel_Kamyshev@epam.com 'admin51294' --filename /home/vagrant/.chef/kamyshev.pem
chef-server-ctl org-create my_org 'My Organization' --association_user kamyshev --filename /home/vagrant/.chef/my_org.pem
chef-server-ctl install chef-manage
chef-server-ctl reconfigure
chef-manage-ctl reconfigure --accept-license





wget https://packages.chef.io/files/stable/chef/13.5.3/ubuntu/14.04/chef_13.5.3-1_amd64.deb
 wget https://packages.chef.io/files/stable/chefdk/2.3.4/ubuntu/14.04/chefdk_2.3.4-1_amd64.deb
