require 'bigdecimal'

module Shinsei
  class Site < LibNova::LnlatPosn

    # N, E => +
    # S, W => -
    def self.new(latitude, longitude, digits = 4)
      instance = super()

      instance[:lat] = BigDecimal latitude,  digits
      instance[:lng] = BigDecimal longitude, digits

      instance
    end

    def moon
      @moon ||= Moon.new self
    end
    def sun
      @sun ||= Sun.new self
    end

    def inspect
      '#<%s:0x%s latitude=%f longitude=%f>' % [
        self.class.name,
        pointer.address.to_s(16).rjust(14, '0'),
        self[:lat], self[:lng]
      ]
    end

  end
end
