cask "pidex" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.27"
  sha256 arm:   "e7a666bcdab3dc024cc75ea61dc42057d2ca29856d3022c820945bde900739b0",
         intel: "9979245f9a5a131dbba891422bcf5f2e70bc1e1f74970016f2ec11a79e084765"

  url "https://github.com/echohello-dev/pidex/releases/download/#{version}/pidex-mac-#{arch}.dmg"
  name "pidex"
  desc "Desktop workbench for the Pi coding agent"
  homepage "https://github.com/echohello-dev/pidex"

  depends_on macos: :sonoma

  app "pidex.app"

  zap trash: [
    "~/Library/Application Support/pidex",
    "~/Library/Preferences/dev.echohello.pidex.plist",
    "~/Library/Saved Application State/dev.echohello.pidex.savedState",
  ]
end
