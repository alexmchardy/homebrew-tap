# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Syncer < Formula
  homepage ""
  url "https://github.com/alexmchardy/syncer/archive/0.1.tar.gz"
  version "0.1"
  sha256 "5674be56ce6f5ca038acbea25709a5e7594800244344faa17f5efac99353c308"

  depends_on "node"

  resource "fsmonitor" do
      url "https://github.com/andreyvit/fsmonitor.js/archive/v0.2.4.tar.gz"
  end

  def install
    resource("fsmonitor").stage { system "npm", "install", "-g", "fsmontior" }
    bin.install "syncer"
    bin.install "syncit"
  end

  test do
    system "#{bin}/program"
  end
end
