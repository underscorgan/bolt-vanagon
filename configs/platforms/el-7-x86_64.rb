peversion = IO.read('peversion').strip
platform "el-7-x86_64" do |plat|
  plat.servicedir "/usr/lib/systemd/system"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "systemd"

  plat.provision_with "rpm --import http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs"
  plat.provision_with "yum install --assumeyes autoconf automake rsync gcc createrepo make rpmdevtools rpm-libs yum-utils rpm-sign libtool autogen git"
  plat.install_build_dependencies_with "yum install --assumeyes"
  plat.vmpooler_template "centos-7-x86_64"
end
