module Babushka
  class FreeBSDPkgHelper < PkgHelper
  class << self
    def manager_key; :freebsdpkg end
  end
  end
end
