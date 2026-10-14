cask "pidex" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.14-2"
  sha256 arm:   "139de8cef12d2cdc3d6f214afb6e5b4a3412c9a0374fd6c83d2d880f006fbb07",
         intel: "b5323dbf716c374c1ae6955bcb2455c9ffd41eeed3dd9bba7263185840ffec1e"

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
