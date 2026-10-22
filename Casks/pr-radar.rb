cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "bacf863f73d3d0fc1ce9170716bdd8515d31358a9cba779e55e064a9f40d6182",
         intel: "d082d3eba715992dc54ad57bc6f52ef4910516855e9a1252abc81d9bb608c073"

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
