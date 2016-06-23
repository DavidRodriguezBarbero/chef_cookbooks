package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "<h1>Hello, world!</h1>
  <h2>This is David\'s web server:</h3>
  <h3>IPADDRESS: #{node['ipaddress']}</h3>
  <h3>HOSTNAME: #{node['hostname']}</h3>
  <h3>PUBLIC IP: #{node['cloud']['public_ipv4']}</h3>
  <h3>PUBLIC HOSTNAME: #{node['cloud']['public_hostname']}</h3>
"
  action :create
end

service 'httpd' do
  action [ :enable,:start ]
end

