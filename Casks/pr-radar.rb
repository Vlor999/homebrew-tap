cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "e0990a96562bff398016412513665f57829a262c741c708784d104fdf4921f4e",
         intel: "e7fcf1f66c787709f099606966601b21c7378716dcf87de7342a868e9119e6d8"

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
