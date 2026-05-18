cask "writeme" do
  version "1.0.0"

  on_arm do
    url "https://github.com/g4rcez/writeme-editor/releases/download/v#{version}/writeme-#{version}-arm64.dmg"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  on_intel do
    url "https://github.com/g4rcez/writeme-editor/releases/download/v#{version}/writeme-#{version}-x64.dmg"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  name "Writeme"
  desc "Markdown note-taking application"
  homepage "https://writeme.dev"

  app "writeme.app"

  zap trash: [
    "~/Library/Application Support/writeme",
    "~/Library/Preferences/dev.writeme.app.plist",
    "~/Library/Logs/writeme",
    "~/Library/Caches/dev.writeme.app",
  ]
end
