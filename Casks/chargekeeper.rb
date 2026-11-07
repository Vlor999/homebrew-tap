cask "chargekeeper" do
  version "1.0.13"
  sha256 "ee646fd0f8920ae04c951457d19071ad3c3ab42ac3322ad9b6f4e5b9f23f7d20"

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
