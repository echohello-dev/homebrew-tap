cask "pidex" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.19"
  sha256 arm:   "0780e15a94b1ab7280cc535f8d93e980076b69f7d409f51e2442ddc4b0f37d73",
         intel: "858ac1368f2e4fd13aa589e1924121a8aad86a0dea6281004398be517f438252"

  url "https://github.com/echohello-dev/pidex/releases/download/#{version}/pidex-mac-#{arch}.dmg"
  name "pidex"
  desc "Desktop workbench for the Pi coding agent"
  homepage "https://github.com/echohello-dev/pidex"

  depends_on macos: :monterey

  app "pidex.app"

  zap trash: [
    "~/Library/Application Support/pidex",
    "~/Library/Preferences/dev.echohello.pidex.plist",
    "~/Library/Saved Application State/dev.echohello.pidex.savedState",
  ]
end
