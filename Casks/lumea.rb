cask "lumea" do
  version "2.6.1"
  sha256 "f5a77f68a1e3a98c3c968c49766f9f2bf78271cc87b023dcf4ddaa4427ba36f7"

  url "https://github.com/ugurcandede/lumea/releases/download/v#{version}/Lumea-macos-arm64.zip"
  name "Lumea"
  desc "Desktop control for ELK-BLEDOM / MELK Bluetooth LED strips"
  homepage "https://github.com/ugurcandede/lumea"

  depends_on arch: :arm64

  app "Lumea.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Lumea.app"]
  end

  uninstall quit: "com.ugurcandede.lumea"
end
