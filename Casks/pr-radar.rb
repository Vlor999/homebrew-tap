cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "93ccbe1d86d0f5ad7981e0203171e12c4cf17ce284aac3ec71271183bc945bfd",
         intel: "48c57e76fcf343a8a68913009a88ed12792026bd0809f47bf97fc9ef9f06a0dd"

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
