cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "9e815302e4a6619f2597d86641fc0338301c3b644b99ae6e65deb442383ae805",
         intel: "7f408a7a002ac2b5dfec551fda506de5301e3fd7db9796d3fda8095ef62775ca"

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
