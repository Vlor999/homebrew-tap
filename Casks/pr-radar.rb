cask "pr-radar" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.5"
  sha256 arm:   "ab72bf4ee173242042875c0ca202ab66027858f8450e0ae6e6b41ee92567f8ac",
         intel: "435bf6f7c0c3062427eff7cc0468c76d1a8882eee3280a7a06a305db4314303f"

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
