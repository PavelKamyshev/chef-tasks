default['jboss']['user_name'] = "jboss"
default['jboss']['jboss_fname'] = "jboss-as-7.1.1.Final.zip"
default['jboss']['app_fname'] = "testweb.zip"
default['jboss']['dist_url'] = "http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.zip"
default['jboss']['app_url'] = "http://www.cumulogic.com/download/Apps/testweb.zip"
default['jboss']['dest_folder'] = '/opt/'
default['jboss']['jboss_home'] = '/opt/jboss-as-7.1.1.Final'
default['jboss']['deploy_folder'] = "#{node['jboss']['jboss_home']}/standalone/deployments"
default['jboss']['jboss_ip'] = '0.0.0.0'
