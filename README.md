# Shinsei

Ruby bindings for [libnova](http://libnova.sourceforge.net/), a general purpose, double precision, Celestial Mechanics, Astrometry and Astrodynamics library.

## Installation

Add this line to your application's Gemfile:

    gem 'shinsei'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shinsei

## Usage

    latitude, longitude = '53.59209', '9.95328'
    site = Shinsei latitude, longitude

    moon = site.moon
    moon.rise Date.today # => #<DateTime: ...>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

* libnova contributors
* all the people behind FFI
* [fork](http://fork.de)
