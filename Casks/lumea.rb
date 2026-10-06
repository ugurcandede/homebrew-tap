cask "lumea" do
  version "2.4.1"
  sha256 "a06e902feccfa0ebd4a64f009df7bd909771843f0982b66b1af14f1acfde5d1e"

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
