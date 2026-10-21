cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "8a645282ddb3a869a1e4e35227fae77df9310f8fd9b544a3c5ca6d160afa8bd5",
         intel: "de3db45c8ba4a27027c798c6a56444cafb4fe3741bdd04ee2197995f4282f947"

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
