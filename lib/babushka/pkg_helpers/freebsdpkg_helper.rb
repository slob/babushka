module Babushka
  class FreeBSDPkgHelper < PkgHelper
  class << self
    def pkg_type; :tbz end
    def manager_key; :freebsdpkg end
    def install! pkgs, opts
      log_shell "Installing", "pkg_add -r #{pkgs.join(' ')}", :sudo => true
      super
    end

    private

    def _has? pkg_name
      shell("pkg_info -E '#{ pkg_name }>0'")
    end
  end
  end
end
