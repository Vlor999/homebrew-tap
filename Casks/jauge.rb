cask "jauge" do
  version "1.0.7"
  sha256 "ade06cd50a590c5cbd97cee089944e5bfecf9496e267a6b5bd8f32c2fdb70ba3"

  url "https://github.com/Vlor999/jauge/releases/download/v#{version}/Jauge-#{version}.dmg"
  name "Jauge"
  desc "Battery charge limiter for Apple silicon MacBooks"
  homepage "https://vlor999.github.io/jauge/"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"
  auto_updates true

  app "Jauge.app"
  binary "#{appdir}/Jauge.app/Contents/MacOS/jaugectl"

  uninstall launchctl: "com.vlor999.jauge.daemon", quit: "com.vlor999.jauge"
  zap trash: ["/Library/Application Support/Jauge", "~/Library/Preferences/com.vlor999.jauge.plist"]
end
