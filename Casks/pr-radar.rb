cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "a02d5abc6d0735228f6ccee207a26fa47c0d1bbc874fecf9fb953baaccfed62b",
         intel: "ba3a5dbda8bbb581b70bbc49dac7556488b4cf2bd3ff11dcdbcc10b72a3157fd"

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
