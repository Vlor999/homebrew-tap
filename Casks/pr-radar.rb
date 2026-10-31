cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "4a048d6aaa9ba53eac75f2869d52974639241017217cb517f1527c8147317250",
         intel: "21fcb604d3f500d7775371886d5389fe83a67930075cdc88640aa3a34f33b83f"

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
