require 'formula'

class Bfgminer < Formula
  homepage 'https://github.com/luke-jr/bfgminer'
  head 'https://github.com/luke-jr/bfgminer.git', :branch => 'bfgminer'
  url 'http://luke.dashjr.org/programs/bitcoin/files/bfgminer/3.1.1/bfgminer-3.1.1.zip'
  sha1 '43054174042775268d5bc8a084eecb60420d7c81'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  depends_on 'uthash' => :build
  depends_on 'curl'
  depends_on 'jansson'

  def install
    system "./autogen.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "PKG_CONFIG_PATH=/usr/local/opt/curl/lib/pkgconfig:/usr/local/opt/jansson/lib/pkgconfig",
                          "--enable-scrypt"
    system "make", "install"
  end

  test do
    system "bfgminer"
  end
end
