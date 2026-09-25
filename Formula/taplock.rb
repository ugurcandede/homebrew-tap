class Taplock < Formula
  desc "Temporarily disable keyboard and trackpad input, or take relaxing breaks on your Mac"
  homepage "https://github.com/ugurcandede/taplock"
  url "https://github.com/ugurcandede/taplock/releases/download/v1.3.5/taplock-macos.zip"
  sha256 "7f43140cee9c1d91143cb1d70615f7f339a4cb9800d6d1083d1fd6478f49c96d"
  license :cannot_represent

  def install
    bin.install "taplock-universal" => "taplock"
  end

  def caveats
    <<~EOS
      TapLock needs Accessibility permission to block input.
      It will guide you through this on first run.
    EOS
  end

  test do
    system "#{bin}/taplock", "--version"
  end
end
