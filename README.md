# Minke::Generator::Template

This is an example generator for creating Minkie plugins, clone this template and update with your own specific stuff.

## Available variables for template
- SERVICE_NAME: The name of the service
- APPLICATION_NAME: The name of the application executable
- NAMESPACE: Namespace of the application
- APPLICATION_LOCATION: File path for the build artefacts

## Testing your template
```
$ bundle
```

Test your generator by running ...
```
$ bundle exec minke -g minke-generator-template -o ../temp -a tester -n mynamespace
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minke-generator-template'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minke-generator-template

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/minke-generator-template. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
