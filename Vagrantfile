Vagrant.require_version ">= 1.6.0"

Vagrant.configure("2") do |config|

  config.vm.define "docker-nginx" do |v|
    v.vm.provider "docker" do |d|
      d.build_dir = "."
      d.cmd  = ["/bin/bash", "/tmp/docker-nginx/script/vagrant.sh"]

      # Docker host configuration
      d.force_host_vm       = true
      d.vagrant_vagrantfile = "Vagrantfile.coreos"
      d.vagrant_machine     = "coreos"

      d.volumes = ["/home/core/share/docker-nginx:/tmp/docker-nginx:rw"]
    end

    v.ssh.username = "root"
    v.ssh.password = "vagrant"
  end

end