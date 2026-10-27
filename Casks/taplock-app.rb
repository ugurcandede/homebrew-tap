cask "taplock-app" do
  version "1.9.1"
  sha256 "6fcf9bd0f9d0101ae2ff90d364aac2b0c09cdb104203096502386b8c130b552c"

  url "https://github.com/ugurcandede/taplock-app/releases/download/v#{version}/TapLock-macos.zip"
  name "TapLock"
  desc "Menu bar app to temporarily disable input, or take relaxing breaks on your Mac"
  homepage "https://github.com/ugurcandede/taplock-app"

  app "TapLock.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/TapLock.app"
    system "tccutil", "reset", "Accessibility", "com.ugurcandede.taplock"
  end

  uninstall quit: "com.ugurcandede.taplock"

  caveats <<~EOS
    TapLock needs Accessibility permission to block input.
    It will prompt you on first launch.
    Grant permission in System Settings > Privacy & Security > Accessibility.
  EOS
end
