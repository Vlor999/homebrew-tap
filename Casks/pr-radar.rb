cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.6"
  sha256 arm:   "00fa302730a5085e28b3269c9d57212632e6f6dd70ece5df5f4b17c7dc3a218e",
         intel: "a61ec9d7706d9704b878f4dd9ecdefe8900c6a62c4cb1d72642615ad4672a2bf"

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
