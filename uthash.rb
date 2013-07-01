require 'formula'

class Uthash < Formula
  homepage 'http://troydhanson.github.io/uthash/'
  url 'https://github.com/troydhanson/uthash/archive/master.zip'
  sha1 '27bbfb08fb93cb339ce7b114e1d43909756f2355'
  version 'Master'

  def install
    include.install Dir['src/*']
  end
end