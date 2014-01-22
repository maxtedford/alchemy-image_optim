module Alchemy
  module ImageOptim
    class Configuration
      attr_accessor :raise_errors

      def initialize
        # Set this to +false+ if you dont want to raise errors when something went wrong while optimizing an image
        @raise_errors = true
      end
    end

    class << self
      attr_accessor :configuration

      def configuration
        @configuration ||= Configuration.new
      end

      # Call this method to modify defaults in your initializers.
      #
      # @example
      #   Alchemy::ImageOptim.configure do |config|
      #     config.raise_errors = true
      #   end
      def configure
        yield(configuration)
      end
    end
  end
end
