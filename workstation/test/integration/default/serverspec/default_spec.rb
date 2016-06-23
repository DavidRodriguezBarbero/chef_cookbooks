require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package ('tree') do
    if { should be_installed }
  end
#  describe package ('cowsay') do
#    if { should be_installed }
#  end
end
