require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('httpd') do
    it { should be_installed }
  end
  describe file('/var/www/html/index.html') do
    it { should be_file }
    its(:content) { should match /<h1>Hello, world!<\/h1><\/br><h2>David's web server<\/h2>/ }
  end
  describe service('httpd') do
    it { should be_enabled }
    it { should be_running }
  end
  describe command('curl localhost') do
    its(:stdout) { should match /David/ }
  end
end
