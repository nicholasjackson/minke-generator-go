require "generators/gomicroservice/version"

require 'minke/generators/register'
require 'minke/generators/config'

module Minke
  module Generators
    module GoMicroservice
      # Register the template with minke
      config = Minke::Generators::Config.new
      config.name = 'minke-generator-go'
      config.template_location = File.expand_path(File.dirname(__FILE__)) + '/gomicroservice/scaffold'

      config.build_settings = Minke::Generators::BuildSettings.new

      config.build_settings.build_commands = Minke::Generators::BuildCommands.new.tap do |bc|
        bc.fetch = [['/bin/sh', '-c', 'glide install']]
        bc.build = [['/bin/sh', '-c', 'go build -a -installsuffix cgo -ldflags \'-s\' -o <%= application_name %>']]
        bc.test = [['/bin/sh', '-c', 'go test $(go list ./... | grep -v /vendor/)']]
      end

      config.build_settings.docker_settings = Minke::Generators::DockerSettings.new.tap do |bs|
        bs.image = 'nicholasjackson/minke-generator-go:latest'
        bs.env = ['CGO_ENABLED=0']
        bs.binds = [
          "<%= src_root %>:/go/src/<%= namespace %>/<%= application_name %>",
          "#{ENV['HOME']}/.glide:/root/.glide"
        ]
        bs.working_directory = '/go/src/<%= namespace %>/<%= application_name %>'
      end

      Minke::Generators.register config
    end
  end
end
