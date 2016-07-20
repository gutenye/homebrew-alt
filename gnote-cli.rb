require "formula"

class GnoteCLI < Formula
  homepage "https://github.com/gutenye/gnote-cli"
  url "https://github.com/gutenye/gnote-cli/archive/gnote.homebrew.amd64-0.0.1.tar.gz"
  sha1 "d6bffe0057a134c64bc86092aad19a106910924d"

  def install
    bin.install "gnote"
  end
end
