require 'formula'

class Libanttweakbar < Formula
  url 'https://github.com/davidcox/AntTweakBar/tarball/master'
  homepage ''
  md5 'ff28695f4f4a73f477289de8cc204151'
  version '1.14'

  # depends_on 'cmake'

  def install
    system "cd src; make -f Makefile.osx"
    system "cp -r lib #{prefix}/"
    system "cp -r include #{prefix}/"
  end
end
