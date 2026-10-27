cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "17dc2a599e015620de8b081341543ec69a56709c6ea514e26cb021989453ffd4",
         intel: "924d74ad20978ad56b70fcce68b69854c093541932eced1fa5e1a4b431bf7f0b"

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
