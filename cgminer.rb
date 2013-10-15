require 'formula'

class Cgminer < Formula
  homepage 'https://github.com/ckolivas/cgminer'
  head 'https://github.com/ckolivas/cgminer.git', :branch => 'master'
  url 'https://github.com/ckolivas/cgminer/archive/v3.6.1.tar.gz'
  sha1 'e4f5d7fbf1c78bf8b9eb9c3ccaa2af56a030d30c'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  depends_on 'coreutils' => :build
  depends_on 'curl'
  depends_on 'jansson'
  depends_on 'libusb'

  def install
    inreplace "autogen.sh", "libtoolize", "glibtoolize"
    inreplace "autogen.sh", "readlink", "greadlink"
    system "autoreconf -fvi"
    system "./autogen.sh", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "PKG_CONFIG_PATH=#{HOMEBREW_PREFIX}/opt/curl/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/jansson/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/libusb/lib/pkgconfig",
                          "--enable-scrypt",
                          "--enable-bflsc",
                          "--enable-bitforce",
                          "--enable-icarus",
                          "--enable-modminer",
                          "--enable-ztex",
                          "--enable-avalon"
    system "make", "install"
  end

  test do
    system "cgminer"
  end
end
