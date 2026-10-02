cask "pidex" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.28-2"
  sha256 arm:   "979807b7339c5ee5d6c7ad5f0a074c075559b11850e25d2929a4aa850ff6616a",
         intel: "54a01c12a92d02e288a3f2130065fb9e16000fb90f0c87b4da417f46e84f9936"

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
