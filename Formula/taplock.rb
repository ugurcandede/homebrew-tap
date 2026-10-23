class Taplock < Formula
  desc "Temporarily disable keyboard and trackpad input, or take relaxing breaks on your Mac"
  homepage "https://github.com/ugurcandede/taplock"
  url "https://github.com/ugurcandede/taplock/releases/download/v1.4.0/taplock-macos.zip"
  sha256 "e92358abaa0787b16a303e89360a233bf6f6585b7018627a0bf53b552db46f30"
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
