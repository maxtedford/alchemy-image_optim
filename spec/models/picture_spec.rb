require "spec_helper"

module Alchemy
  describe Picture do

    let :jpg_file do
      File.new(File.expand_path('../../support/jpg_file.jpg', __FILE__))
    end

    let :png_file do
      File.new(File.expand_path('../../support/png_file.png', __FILE__))
    end

    context "after assigning" do
      context "a jpg file" do
        it "the size will be reduced" do
          file_size_before_optimizing = jpg_file.size
          picture = Picture.new(:image_file => jpg_file)
          file_size_after_optimizing = picture.image_file.size
          expect(file_size_before_optimizing).to be > file_size_after_optimizing
        end
      end

      context "a png file" do
        it "the size will be reduced" do
          file_size_before_optimizing = png_file.size
          picture = Picture.new(:image_file => png_file)
          file_size_after_optimizing = picture.image_file.size
          expect(file_size_before_optimizing).to be > file_size_after_optimizing
        end
      end
    end
  end
end
