require 'formula'

class GutenUtils < Formula
  homepage 'https://github.com/GutenYe/guten-utils'
  url 'https://github.com/GutenYe/guten-utils/archive/v0.1.tar.gz'
  sha1 'd6bffe0057a134c64bc86092aad19a106910924d'

  def install
    system './build.sh'
    bin.install Dir['dist/*']
  end
end
