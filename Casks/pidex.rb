cask "pidex" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.02"
  sha256 arm:   "3f6a3833036b16c91944604e224fbd8ea58b0632ad3c85abfd43dacde61af76b",
         intel: "2e72362e43bed42b94d0d63d78c9fefcffb5be8e46ee81e6208ba20954e82a47"

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
