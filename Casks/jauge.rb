cask "jauge" do
  version "1.0.2"
  sha256 "7abe00478795141cf8e3ab4c84e0bf987d77fa426bb6a8418f76206e03d5580f"

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
