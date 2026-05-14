class Taplock < Formula
  desc "Temporarily disable keyboard and trackpad input, or take relaxing breaks on your Mac"
  homepage "https://github.com/ugurcandede/taplock"
  url "https://github.com/ugurcandede/taplock/releases/download/v1.3.2/taplock-macos.zip"
  sha256 "b35566e193385ae118c83b985a2845036f1b6b6dcf2fe9ac7bd32166690901c7"
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
