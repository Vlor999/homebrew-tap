cask "jauge" do
  version "1.0.4"
  sha256 "7756689a5eb26e126c0570cce4490cd073b9078ab7561fc261e7883dd0e47e4f"

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
