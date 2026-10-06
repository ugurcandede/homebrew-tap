cask "lumea" do
  version "2.5.0"
  sha256 "a3d4dbdcd4a272fb190b3f9663c17bf35fe1f8cf533f92f93f7d501c42539f99"

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
