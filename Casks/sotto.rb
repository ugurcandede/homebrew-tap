cask "sotto" do
  version "0.6.2"
  sha256 "5896d295427ced06a501c0b11accdba78235e77914c155685b735d6b4c463baa"

  url "https://github.com/ugurcandede/sotto/releases/download/v#{version}/sotto-macos.zip"
  name "sotto"
  desc "Menu bar app to mute your microphone system-wide"
  homepage "https://github.com/ugurcandede/sotto"

  depends_on macos: :sonoma

  app "sotto.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/sotto.app"]
  end

  uninstall quit: "com.ugurcandede.sotto"

  caveats <<~EOS
    sotto needs no permissions to mute your microphone.
    Assigning the microphone key (F5) remaps it with hidutil so it mutes instead
    of starting Dictation.
    The remap is removed when you pick another key or quit sotto, and it never
    survives a logout.
  EOS
end
