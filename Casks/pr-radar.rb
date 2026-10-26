cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "9b9f26b7c46fecd3ae56479163e2cd74c3607e65e1e290bf13a954dc278d1de9",
         intel: "d16c4c4fa2ac529d03fed408c4569fc7d4b727325e4a0d7aeb658ad41a81574f"

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
