require 'formula'

class Bfgminer < Formula
  homepage 'https://github.com/luke-jr/bfgminer'
  head 'https://github.com/luke-jr/bfgminer.git', :branch => 'bfgminer'
  url 'http://luke.dashjr.org/programs/bitcoin/files/bfgminer/5.5.0/bfgminer-5.5.0.zip'
  sha256 '67e716b04e0bebb311d6e805e1e1fbabca2187a7d9fb05e38e1f8447d6cb72ac'
  version '5.5.0'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  depends_on 'uthash' => :build
  depends_on 'curl'
  depends_on 'jansson'
  depends_on 'libmicrohttpd'
  depends_on 'libevent'
  depends_on 'libusb'
  depends_on 'hidapi'
  depends_on 'gnu-sed'

  def install
    inreplace "gen-version.sh", "sed", "gsed"
    system "chmod +x *.sh"
    system "NOSUBMODULES=1 ./autogen.sh"
    system "chmod +x configure"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "PKG_CONFIG_PATH=#{HOMEBREW_PREFIX}/opt/curl/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/jansson/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/libmicrohttpd/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/libusb/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/hidapi/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/libevent/lib/pkgconfig",
                          "--enable-scrypt",
                          "--enable-keccak",
                          "--enable-opencl"
    system "make", "install"
  end

  test do
    system "bfgminer"
  end
end
