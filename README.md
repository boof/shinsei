# Shinsei

Ruby bindings for [libnova](http://libnova.sourceforge.net/),
a general purpose, double precision,
Celestial Mechanics, Astrometry and Astrodynamics library.

## Installation

Add this line to your application's Gemfile:

    gem 'shinsei'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shinsei

## Dependencies

- libnova (v0.15, libtool 2.4.2)

## Usage

    latitude, longitude = '53.59209', '9.95328'
    site = Shinsei latitude, longitude

    site.moon_set Date.new(2012, 7, 11) # => '2012-07-12 13:39:55 UTC'
    site.moon_rise Date.new(2012, 7, 11) # => '2012-07-11 22:25:57 UTC'

## Performance

...

## TODO

* write specs
* define more structs
* attach more functions
* documentation

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

* libnova contributors
* all the people working on Ruby and FFI
* [fork](http://fork.de)
