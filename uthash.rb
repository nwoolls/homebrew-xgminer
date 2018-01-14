require 'formula'

class Uthash < Formula
  homepage 'http://troydhanson.github.io/uthash/'
  url 'https://github.com/troydhanson/uthash/archive/v2.0.2.zip'
  sha256 '1c56f7e75ee42e162fb3f72cede7738118c3e6fb88514d40db6afc952dcd7cae'
  version '2.0.2'

  def install
    include.install Dir['src/*']
  end
end
