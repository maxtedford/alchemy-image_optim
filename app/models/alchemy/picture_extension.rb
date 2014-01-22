Alchemy::Picture.class_eval do
  image_accessor :image_file do
    after_assign { |a| a.process!(:optimize) }
  end
end
