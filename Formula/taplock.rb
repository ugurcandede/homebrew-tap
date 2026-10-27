class Taplock < Formula
  desc "Temporarily disable keyboard and trackpad input, or take relaxing breaks on your Mac"
  homepage "https://github.com/ugurcandede/taplock"
  url "https://github.com/ugurcandede/taplock/releases/download/v1.5.0/taplock-macos.zip"
  sha256 "721c79afb07bdd0e580971662162c0917d4467452b6b7a6c3c10732a219131d9"
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
