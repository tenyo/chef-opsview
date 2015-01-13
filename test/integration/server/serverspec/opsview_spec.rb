require 'serverspec'
# Set backend type
set :backend, :exec

set :path, '/sbin:/usr/sbin:$PATH'

describe "opsview" do
  it "mysql is listening on port 3306" do
    expect(port(5666)).to be_listening
  end

  it "apache2 is listening on port 80" do
    expect(port(80)).to be_listening
  end

  it "opsview-web is listening on port 3000" do
    expect(port(80)).to be_listening
  end

  it "has a running service of mysql" do
    expect(service("mysql")).to be_running
  end

  it "has a running service of opsview" do
    expect(service("opsview")).to be_running
  end
end