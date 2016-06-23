package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "<h1>Hello, world!</h1>
  <h2>This is David\'s web server:</h3>
  <h3>IPADDRESS: #{node['ipaddress']}</h3>
  <h3>HOSTNAME: #{node['hostname']}</h3>
  <h3>MEMORY: #{node['memory']['total']}</h3>
  <h3>CPU: #{node['cpu']['0']['mhz']} MHz</h3>
"
  action :create
end

service 'httpd' do
  action [ :enable,:start ]
end

