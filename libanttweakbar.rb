require 'formula'

class Libanttweakbar < Formula
  url 'https://github.com/davidcox/AntTweakBar/tarball/2a7cb08ebd4d11755b99'
  homepage ''
  md5 '9a8953cc7d53a77cfc32607ad658d841'
  version '1.14'

  depends_on 'cmake'

  def install
    system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
