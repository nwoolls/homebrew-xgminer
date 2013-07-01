require 'formula'

class Bfgminer < Formula
  homepage 'https://github.com/luke-jr/bfgminer'
  url 'http://luke.dashjr.org/programs/bitcoin/files/bfgminer/3.0.2/bfgminer-3.0.2.zip'
  sha1 '43e01b571407d4a92dfdf9ca8b215fe3a1cc3fde'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  depends_on 'curl'
  depends_on 'jansson'

  def install
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
