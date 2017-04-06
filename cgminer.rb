require 'formula'

class Cgminer < Formula
  homepage 'https://github.com/ckolivas/cgminer'
  head 'https://github.com/ckolivas/cgminer.git', :branch => 'master'
  url 'https://github.com/ckolivas/cgminer/archive/v4.9.1.tar.gz'
  sha256 '01e61a98c7387f3fc67c1ee2e65c1f3b8350390b54eefac06f1ad8888d9cda50'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  depends_on 'coreutils' => :build
  depends_on 'curl'

  def install
    inreplace "autogen.sh", "libtoolize", "glibtoolize"
    system "autoreconf -fvi"
    system "./autogen.sh", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "PKG_CONFIG_PATH=#{HOMEBREW_PREFIX}/opt/curl/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/jansson/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/libusb/lib/pkgconfig",
                          "--enable-bflsc",
                          "--enable-bitforce",
                          "--enable-icarus",
                          "--enable-modminer",
                          "--enable-avalon",
                          "--disable-adl",
                          "--enable-opencl",
                          "--enable-bitfury",
                          "--enable-hashfast",
                          "--enable-klondike",
                          "--enable-drillbit",
                          "--enable-avalon2",
                          "--enable-blockerupter",
                          "--enable-cointerra",
                          "--enable-hashratio"
    system "make", "install"
  end

  test do
    system "cgminer"
  end
end
