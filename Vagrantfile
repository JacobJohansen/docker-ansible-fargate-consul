Vagrant.configure("2") do |config|

####################################################################################################
#  Node  : Local Consul Cluster
#  Image : https://hub.docker.com/_/consul
####################################################################################################

    (1..3).each do |i|
      config.vm.define "consul-#{i}" do |node|
        node.vm.provider "docker" do |d|
            d.image = "consul"
            d.has_ssh = false
        end
      end
    end

end
