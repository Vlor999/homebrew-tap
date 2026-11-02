cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "394e79139bed668c183b99c63b9ac410eb60c58c00878fd312fe0b3d7a0a08db",
         intel: "9fdcb37f301ec7c45aeaaa959957c122565235b7eb7efd96fc2e4accac41d644"

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
