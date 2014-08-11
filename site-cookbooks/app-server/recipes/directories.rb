directory "/var/www" do
  owner "root"
  group "root"
  mode 00755
  action :create
  recursive true
end

[
  "/var/www/app",
  "/var/www/rdeploy"
].each do |dir|
  directory dir do
    owner "deploy"
    group "deploy"
    mode 00755
    action :create
  end
end
