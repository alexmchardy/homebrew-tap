class Tocdn < Formula
  homepage "https://github.shuttercorp.net/amchardy/tocdn"
  url "https://github.shuttercorp.net/amchardy/tocdn", :using => :git, :tag => "0.0.2"
  sha256 "6dad03d7e6001b411843dfec6e42da5340c927c7"

  depends_on "ffmpeg" => "with-libvpx"
  depends_on "qtfaststart"

  def install
    bin.install "tocdn"
  end

  test do
    system "${bin}/tocdn", "--help"
  end
end
