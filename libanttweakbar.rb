require 'formula'

class Libanttweakbar < Formula
  url 'https://github.com/davidcox/AntTweakBar/tarball/5d01aacbeb71fcd6928b'
  homepage ''
  md5 '51c1f31fa5e504b2baf4e71101256f11'
  version '1.14'

  # depends_on 'cmake'

  def install
    system "cd src; make -f Makefile.osx"
    system "cp -r lib #{prefix}/"
    system "cp -r include #{prefix}/"
  end
end
