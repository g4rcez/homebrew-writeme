cask "writeme" do
  version "1.0.10"

  on_arm do
    url "https://github.com/g4rcez/writeme-editor/releases/download/v#{version}/writeme-#{version}-arm64.dmg"
    sha256 "81c615eab087484cfda09dc2b90d9fdebdc883a9944aa31c9fbb034e96e9f305"
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
