require 'formula'

class Bfgminer < Formula
  homepage 'https://github.com/luke-jr/bfgminer'
  head 'https://github.com/luke-jr/bfgminer.git', :branch => 'bfgminer'
  url 'http://luke.dashjr.org/programs/bitcoin/files/bfgminer/3.2.1/bfgminer-3.2.1.zip'
  sha1 '3d2575d5f0d89d7315343d9fb6e0b5ab468b89ca'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  depends_on 'uthash' => :build
  depends_on 'curl'
  depends_on 'jansson'
  depends_on 'libmicrohttpd'

  def install
    system "./autogen.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "PKG_CONFIG_PATH=#{HOMEBREW_PREFIX}/opt/curl/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/jansson/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/libmicrohttpd/lib/pkgconfig",
                          "--enable-scrypt"
    system "make", "install"
  end

  test do
    system "bfgminer"
  end
end
