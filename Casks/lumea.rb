cask "lumea" do
  version "2.2.0"
  sha256 "fa8f24aa6ae55070cbdb28cf0b315e03c9ecd2de6689dd7b1a21af2d388b1cc1"

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
