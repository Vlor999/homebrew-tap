cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "546839ec243a7c22e5533a45be4c81fc0610a9378fc4642de313610b809aae34",
         intel: "a6cd904209a18a9962398914ade99e06b02ba7a05d15ec472d974d4ae7502fcd"

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
