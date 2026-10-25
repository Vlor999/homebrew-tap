cask "jauge" do
  version "1.0.1"
  sha256 "d6a0f2d89d0d09fd6c04bf9b27018f0b398901033f83dc10e116b75613e31fac"

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
