cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "9194dbbe39b62ce4427c01832668a9d96206db30ab5212eb30c48ee8e9d78ca5",
         intel: "f5762a9539a45e3b61b42e0742030c3dc81641d9fb3bd56e13ad983a98daf6e3"

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
