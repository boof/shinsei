require 'ffi'

module Shinsei
  module LibNova

    # class RectPosn < FFI::Struct # ln_rect_posn
    #   layout :x, :double,
    #          :y, :double,
    #          :z, :double
    # end
    # class EquPosn < FFI::Struct # ln_equ_posn
    #   layout :ra,  :double,
    #          :dec, :double
    # end
    class LnlatPosn < FFI::Struct
      layout :lng, :double,
             :lat, :double
    end
    class RstTime < FFI::Struct
      layout :rise,    :double,
             :set,     :double,
             :transit, :double
    end
    class Date < FFI::Struct
      layout :years,   :int,
             :months,  :int,
             :days,    :int,
             :hours,   :int,
             :minutes, :int,
             :seconds, :double
    end

    extend FFI::Library
    ffi_lib 'nova'

    attach_function :ln_get_lunar_rst, [:double, :pointer, :pointer], :void
    attach_function :ln_get_date, [:double, :pointer], :void
    # attach_function :ln_get_lunar_geo_posn, [:double, :pointer, :double], :void
    # attach_function :ln_get_lunar_ecl_coords, [:double, :pointer], :void
    # attach_function :ln_get_lunar_equ_coords, [:double, :pointer], :void
    # attach_function :ln_get_local_date, [:double, :pointer], :void
    # attach_function :ln_get_julian_day, [:pointer], :double

    # for more precision but less performance
    attach_function :ln_get_julian_from_sys, [], :double

  end
end
