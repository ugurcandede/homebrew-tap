cask "lumea" do
  version "2.6.2"
  sha256 "5913241d965df09d9e44dd3a7dcfb26cc2eb2400cedb653d81f050744a939543"

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
