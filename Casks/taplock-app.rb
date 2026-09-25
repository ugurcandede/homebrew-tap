cask "taplock-app" do
  version "1.8.0"
  sha256 "c05a6de3a357b776fdba783064dc6a86bec2f815b653439c4b48ba3f641e342a"

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
