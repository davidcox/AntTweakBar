require 'formula'

class Libanttweakbar < Formula
  url 'https://github.com/davidcox/AntTweakBar/tarball/a71118aabad60c1749e3'
  homepage ''
  md5 '045c92643889d90ebab5556c95aa7c22'
  version '1.14'

  depends_on 'cmake'

  def install
    system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
