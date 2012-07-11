require "shinsei/version"
require "shinsei/ffi/libnova"
require "shinsei/site"

module Shinsei

  Module.new do
    def Shinsei(latitude, longitude, *args)
      Site.new latitude, longitude, *args
    end
    Object.send :include, self
  end

  def self.home
    Shinsei '53.59209', '9.95328'
  end

end
