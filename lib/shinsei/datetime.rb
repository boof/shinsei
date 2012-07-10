module Shinsei
  class DateTime < LibNova::Zonedate

    def year
      self[:years]
    end
    def month
      self[:months]
    end
    def day
      self[:days]
    end
    def hour
      self[:hours]
    end
    def min
      self[:minutes]
    end
    def sec_with_frac
      self[:seconds]
    end

    def to_time
      ::Time.utc year, month, day, hour, min, sec_with_frac
    end
    def to_datetime
      ::DateTime.new year, month, day, hour, min, sec_with_frac
    end

    def inspect
      to_datetime.inspect
    end

    def self.jd(jd)
      instance = new
      LibNova.ln_get_date jd, instance

      instance
    end

  end
end
