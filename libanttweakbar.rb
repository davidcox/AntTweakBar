require 'formula'

class Libanttweakbar < Formula
  url 'https://github.com/davidcox/AntTweakBar/tarball/f6af7426ac850a1f79c8'
  homepage ''
  md5 '55f11de602d37141fad6220c2e3d25c0'
  version '1.14'

  depends_on 'cmake'

  def install
    system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
