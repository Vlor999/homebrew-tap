cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "b236acee56bd192a9f9fea768564ba0df799bf2fbf7c7a1efc280ed83a68e972",
         intel: "7bee4fd5362c88c0914415bc9351e66a9ff8a73f5310ba6755edbbb1b1e12d19"

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
