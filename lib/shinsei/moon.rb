module Shinsei
  class Moon < Struct.new(:site)

    def rise(*date)
      _datetime :rise, *date
    end
    def set(*date)
      _datetime :set, *date
    end
    def transit(*date)
      _datetime :transit, *date
    end

    protected

      def _datetime(key, date = Date.today)
        obj = LibNova::RstTime.new
        LibNova.ln_get_lunar_rst date.jd, site, obj

        DateTime.jd( obj[key] ).to_datetime
      end

  end
end
