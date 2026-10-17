cask "pidex" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.17"
  sha256 arm:   "2a838d34afe7afe161301f3d6349b2d88b64bcef51ee9afd69189f8aa8cf9316",
         intel: "090f7b04b9f60bb9883741da4bf528ec56eae7239c4a2cf5b35f82fa4e183396"

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
