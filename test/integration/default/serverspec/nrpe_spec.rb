require 'serverspec'
# Set backend type
set :backend, :exec

set :path, '/sbin:/usr/sbin:$PATH'

describe "opsview-agent" do
  it "opsview-agent is listening on port 5666" do
    expect(port(5666)).to be_listening
  end

  it "has a running service of opsview-agent" do
    expect(service("opsview-agent")).to be_running
  end
end