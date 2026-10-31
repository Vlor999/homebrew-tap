cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "e3276afeedc4684a71212efca0d9f2bc2079b290a2b673c4b1bc5c347313880d",
         intel: "49db233f6576d7863e0718669217a4a51f90d2de1258aae26f999c42f5e585b4"

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
