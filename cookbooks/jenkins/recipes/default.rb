remote_file "#{node['tomcat']['home']}/webapps/jenkins.war" do
  source node['jenkins']['url']
  owner node['tomcat']['user']
  group node['tomcat']['group']
  notifies :restart, "service[tomcat6]"
end