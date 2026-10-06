cask "pidex" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.06"
  sha256 arm:   "193b8fab18db20a88a4af20737d8f4a7c1f8cb73816e1694b7f2964aa89c90a4",
         intel: "a830d8d00d55a2e52f72ecc57241d9a5ede3cbcb55ca516b43004b40740ea01b"

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
