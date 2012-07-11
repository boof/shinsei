require 'bigdecimal'
require 'date'

module Shinsei
  class Site

    attr_reader :latitude, :longitude

    # N, E => +
    # S, W => -
    def initialize(latitude, longitude, digits = 4)
      @latitude  = BigDecimal latitude,  digits
      @longitude = BigDecimal longitude, digits

      ll = LibNova::LnlatPosn.new
      ll[:lat] = @latitude
      ll[:lng] = @longitude

      @ptr_ll = ll.pointer
    end

    def moon_rise(date = Date.today)
      utc moon_rst(date)[:rise]
    end
    def moon_set(date = Date.today)
      utc moon_rst(date)[:set]
    end
    def moon_transit(date = Date.today)
      utc moon_rst(date)[:transit]
    end

    def inspect
      '#<%s lat=%f lng=%f>' % [ self.class.name, latitude, longitude ]
    end

    protected

      def moon_rst(date)
        object = LibNova::RstTime.new
        LibNova.ln_get_lunar_rst date.jd, @ptr_ll, object
        object
      end
      def utc(jd)
        object = LibNova::Date.new
        LibNova.ln_get_date jd, object
        Time.utc(*object.values)
      end

  end
end
