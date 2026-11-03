cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "e57651fb73c7645f6bb50158801207b2b9776b8a5f2b1a94f1c0652f00efbe72",
         intel: "89b15b0d293ebb61af2406b97008e718b742c365df9a438de5716604de8256bf"

  url "https://github.com/Vlor999/pr-radar/releases/download/v#{version}/PR.Radar_#{version}_#{arch}.dmg"
  name "PR Radar"
  desc "Open GitHub pull requests as a tree"
  homepage "https://vlor999.github.io/pr-radar/"

  # the app updates itself via the Tauri updater
  auto_updates true

  app "PR Radar.app"

  zap trash: [
    "~/Library/Application Support/io.github.vlor999.prradar",
    "~/Library/Caches/io.github.vlor999.prradar",
    "~/Library/WebKit/io.github.vlor999.prradar",
  ]
end
