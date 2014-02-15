# Smart Slug [![Build Status](https://travis-ci.org/rafaelp/smart_slug.png?v=1)](https://travis-ci.org/rafaelp/smart_slug)

## Installation

Add this lines to your Application's Gemfile:

    gem 'smart_slug'

And then execute:

    $ bundle

## Usage

```ruby
require 'smart_slug'

slug = SmartSlug.new("   Coração  ")
 => #<SmartSlug:0x007ff0c20907a8 @original="   Coração  ", @slug="Coracao">

slug.to_s
 => "Coracao"

slug == 'Coracao'
 => true
```

## Versioning

Smart Slug follow the [Semantic Versioning](http://semver.org/).

## Issues

If you have problems, please create a [Github Issue](https://github.com/rafaelp/smart_slug/issues).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

Smart Slug was written by [Rafael Lima](http://rafael.adm.br).

## License

Smart Slug is Copyright © 2014 Rafael Lima. It is free software, and may be redistributed under the terms specified in the [LICENSE](https://github.com/rafaelp/smart_slug/blob/master/LICENSE) file.