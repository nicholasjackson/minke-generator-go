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

      Minke::Generators.register config
    end
  end
end
