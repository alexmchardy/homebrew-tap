# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Syncer < Formula
  homepage ""
  url "https://github.com/alexmchardy/syncer/archive/0.1.tar.gz"
  version "0.1"
  sha256 "5674be56ce6f5ca038acbea25709a5e7594800244344faa17f5efac99353c308"

  depends_on "node"

  def install
    bin.install "syncer"
    bin.install "syncit"
  end

  def post_install
    system "npm", "install", "-g", "fsmonitor"
  end

  test do
    system "#{bin}/syncer"
  end
end
