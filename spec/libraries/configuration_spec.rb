require "spec_helper"

module Alchemy::ImageOptim
  describe Configuration do

    before do
      Alchemy::ImageOptim.configure do |config|
        config.raise_errors = false
      end
    end

    it "is configurable" do
      expect(Alchemy::ImageOptim.configuration.raise_errors).to be_false
    end
  end
end
