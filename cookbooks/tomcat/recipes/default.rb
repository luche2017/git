tomcat_pkgs = value_for_platform(
  ['debian'] => {
      "default" => ["tomcat6", "tomcat6-admin"]
  },
  "default" => ["tomcat6"]
)

tomcat_pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

directory node['tomcat']['home'] do
  owner node['tomcat']['user']
  group node['tomcat']['group']
  recursive true
end

service "tomcat6" do
  action [:enable, :start]
end