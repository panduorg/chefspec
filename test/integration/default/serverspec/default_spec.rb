equire 'spec_helper'

describe 'webserver_test::default' do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.3.1611')
    runner.converge(described_recipe)
  end

  it 'converges successfully' do
    expect { chef_run }.to_not raise_error
  end

  it 'remove httpd package' do
  	expect { chef_run }.remove_package('httpd')
  end

  it 'installed httpd' do 
  	expect { chef_run }.install_package('httpd')
  end

  it 'enable service httpd' do
  	expect { chef_run }.enable_service('httpd')
  end

  it 'start service httpd' do
  	expect { chef_run }.start_service('httpd')
  end

end