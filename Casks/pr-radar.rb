cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "579528ca707a216662c1e7025f450fcf7f21d611990c9ddb0469d58f1e9301d1",
         intel: "cb93abf582c74587bccd5114df354dd8f982fe772a5398bb5c156a6a56697008"

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
