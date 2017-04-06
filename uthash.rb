require 'formula'

class Uthash < Formula
  homepage 'http://troydhanson.github.io/uthash/'
  url 'https://github.com/troydhanson/uthash/archive/58d5990617.zip'
  sha256 '1ddd5c11027133ea3275c53640f3acbcd833d6b1d23acbe6e3f71a802ef8a795'
  version '58d5990617'

  def install
    include.install Dir['src/*']
  end
end
