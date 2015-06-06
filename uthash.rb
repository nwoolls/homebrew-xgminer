require 'formula'

class Uthash < Formula
  homepage 'http://troydhanson.github.io/uthash/'
  url 'https://github.com/troydhanson/uthash/archive/58d5990617.zip'
  sha1 'dda1f1116d41e190990cff1cb11c654daee1d256'
  version '58d5990617'

  def install
    include.install Dir['src/*']
  end
end
