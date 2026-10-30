cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "6847f2fac0664046df41d86e62caa41c066fa4fa73a1d481f796c0b2da9d7f3b",
         intel: "e0534e75041afff3135d778f1b2bcef40b9ca66c5f6f4e084bc1215c1e98ab9f"

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
