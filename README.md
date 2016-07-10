![Minke](http://minke.rocks/img/minke_logo.png)
# Minke::Generators::GoMicroservice

[![Build Status](https://travis-ci.org/nicholasjackson/minke-generator-go.svg?branch=master)](https://travis-ci.org/nicholasjackson/minke-generator-go)  

This generator creates a REST API Microservice in Go for the Minke build and test system.

For information on Minke please see the documentation [http://nicholasjackson.github.io/minke/](http://nicholasjackson.github.io/minke/).

## Available variables for templates (erb style)
| Variable                | Description                            |
| ----------------------- | -------------------------------------- |
| <%= application_name %> | The name of the application executable |
| <%= namespace %>        | Namespace of the application           |
| <%= src_root %>         | Source root of the application         |

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minke'
gem 'minke-generator-go'
```

And then execute:

    $ bundle

Or install it yourself:

```
$ gem install minke
$ gem install minke-generator-go

```

## Usage

To scaffold a new service run:

```bash
$ minke -g minke-generator-go -o $GOPATH/src/github.com/nicholasjackson/helloworld
  -a helloworld -n github.com/nicholasjackson
```

## Build and test with Docker
To run a build with a Docker container, to execute the functional and unit tests you can use the following commands.  Please see the main Minke documentation for more information [http://nicholasjackson.github.io/minke/](http://nicholasjackson.github.io/minke/).

### Build Application Code and Execute Unit tests
```bash
$ cd _build
$ bundle
$ rake app:test
```

### Build a Docker image and execute functional tests with Cucumber
```bash
$ rake app:build_image
$ rake app:cucumber
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nicholasjackson/minke-generator-netmvc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
