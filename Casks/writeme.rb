cask "writeme" do
  version "1.0.12"

  on_arm do
    url "https://github.com/g4rcez/writeme-editor/releases/download/v#{version}/writeme-#{version}-arm64-unsigned.dmg"
    sha256 "c140d5431a473996cada24f258f96bc41325caf7dabcbb0150cf1d1e6e20f7c9"
  end

  name "Writeme"
  desc "Markdown note-taking application"
  homepage "https://writeme.dev"

  no_quarantine true

  app "writeme.app"

  zap trash: [
    "~/Library/Application Support/writeme",
    "~/Library/Preferences/dev.writeme.app.plist",
    "~/Library/Logs/writeme",
    "~/Library/Caches/dev.writeme.app",
  ]
end
