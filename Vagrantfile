Vagrant.configure("2") do |config|

####################################################################################################
#  Node  : Local Consul Cluster
#  Image : https://hub.docker.com/_/consul
####################################################################################################

    (1..3).each do |i|
      config.vm.define "consul-#{i}" do |node|
        node.vm.provider "docker" do |d|
            d.name = "consul-#{i}"
            d.image = "consul"
            d.has_ssh = false
            d.ports = ["850#{i}:8500"]
            d.env = {
                "CONSUL_BIND_INTERFACE":"eth0",
                "CONSUL_LOCAL_CONFIG":'{ "datacenter": "foo", "server": true, "encrypt": "zSni4XjggpO8jW2nofP9VA=="}'
            }
        end
      end
    end

end
