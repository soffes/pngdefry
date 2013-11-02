# Pngdefry

iPhone crushes PNGs with Apple's custom version of PNGCrush. [pngdefry](http://www.jongware.com/pngdefry.html) unfries them. This is a simple Ruby wrapper for a modified version of pngdefry.

## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'pngdefry'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pngdefry

## Usage

``` ruby
Pngdefry.defry('input.png', 'output.png')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
