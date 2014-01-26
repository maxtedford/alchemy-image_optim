# Alchemy::ImageOptim
[![Build Status](https://travis-ci.org/magiclabs/alchemy-image_optim.png?branch=master)](https://travis-ci.org/magiclabs/alchemy-image_optim) [![Coverage Status](https://coveralls.io/repos/magiclabs/alchemy-image_optim/badge.png)](https://coveralls.io/r/magiclabs/alchemy-image_optim)

This gem is an extension of the Alchemy CMS engine.

It optimizes the file size of the master image files uploaded to Alchemy by using the image_optim gem.

## How does it work

After assigning an image to an Alchemy::Picture model (i.e. after uploading a new image) that image will be processed with lossless image optimization tools: PNGOUT, AdvPNG, Pngcrush, OptiPNG, JpegOptim, jpegrescan, jpegtran, and Gifsicle.

## Binaries Installation

Thanks to toy: https://github.com/toy/image_optim#binaries-installation

## Gem installation

Add this line to your application's Gemfile:

    gem 'alchemy-image_optim'

And then execute:

    $ bundle

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
