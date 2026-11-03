cask "chargekeeper" do
  version "1.0.12"
  sha256 "29a5ebb94ce3c536ac80ccd3ad9cb573674e8f9b6192f56d966fc23ebfe93a4a"

  url "https://github.com/Vlor999/chargekeeper/releases/download/v#{version}/ChargeKeeper-#{version}.dmg"
  name "ChargeKeeper"
  desc "Battery charge limiter for Apple silicon MacBooks"
  homepage "https://vlor999.github.io/chargekeeper/"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"
  auto_updates true

  app "ChargeKeeper.app"
  binary "#{appdir}/ChargeKeeper.app/Contents/MacOS/chargekeeperctl"

  # Internal ids keep the former name Jauge.
  uninstall launchctl: "com.vlor999.jauge.daemon", quit: "com.vlor999.jauge"
  zap trash: ["/Library/Application Support/Jauge", "~/Library/Preferences/com.vlor999.jauge.plist"]
end
