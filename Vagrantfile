Vagrant.configure("2") do |config|

    config.vm.define "iis" do |iis|

      iis.vm.box = "gusztavvargadr/iis"
      iis.vm.guest = :windows
      iis.vm.communicator = "winrm"

      iis.vm.network "private_network", ip: "192.168.50.10"

      # iis.vm.synced_folder ".", "/vagrant", type: "virtualbox"

      iis.vm.provision :shell, path: "provisioners/iis-install.ps1"
      # iis.vm.provision :shell, path: "provisioners/iis-configure.ps1"

      iis.vm.boot_timeout = 600

    end

    config.vm.define "sqlserver" do |sqlserver|

      sqlserver.vm.box = "gusztavvargadr/sql-server"
      sqlserver.vm.guest = :windows
      sqlserver.vm.communicator = "winrm"

      sqlserver.vm.network "private_network", ip: "192.168.50.20"

      # sqlserver.vm.synced_folder ".", "/vagrant", type: "virtualbox"

      # sqlserver.vm.provision :shell, path: "provisioners/sqlserver-install.ps1"
      # sqlserver.vm.provision :shell, path: "provisioners/sqlserver-configure.ps1"

      sqlserver.vm.boot_timeout = 600

    end


end
