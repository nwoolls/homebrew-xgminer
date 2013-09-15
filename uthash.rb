require 'formula'

class Uthash < Formula
  homepage 'http://troydhanson.github.io/uthash/'
  url 'https://github.com/troydhanson/uthash/archive/58d5990617.zip'
  sha1 '015622dfee4367b5de07a7207f7beb3768e0bd99'
  version '58d5990617'

  def install
    include.install Dir['src/*']
  end
end
