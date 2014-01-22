require "spec_helper"

module Alchemy::ImageOptim
  describe Processor do
    let(:processor) { Processor.new }

    describe ".optimize" do
      context "when an error occurs" do
        context "with 'raise_errors' configuration set to false" do
          before { Alchemy::ImageOptim.configuration.raise_errors = false }
          it "should not raise an error" do
            expect {processor.optimize("wrong argmument")}.to_not raise_error
          end

          it "should return the same argument that was passed in" do
            expect(processor.optimize("wrong argmument")).to eq("wrong argmument")
          end
        end

        context "with 'raise_errors' configuration set to true" do
          before { Alchemy::ImageOptim.configuration.raise_errors = true }
          it "should raise an error" do
            expect {processor.optimize("wrong argmument")}.to raise_error
          end
        end
      end
    end
  end
end
