cask "jauge" do
  version "1.0.6"
  sha256 "58549c1ef102a0d724ac726ff2caf83a59d9e3c5a056034d454c27bcaf78c171"

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
