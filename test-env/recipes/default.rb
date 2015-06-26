Chef::Log.info("env var is : #{node[:deploy]['test'][:environment_variables][:MY_TEST]}")

template "/tmp/my_template.txt" do
  source "test.erb"
  mode '0440'
  owner 'root'
  group 'root'
  variables({
     :my_test => node[:deploy]['test'][:environment_variables][:MY_TEST]}
  )
end