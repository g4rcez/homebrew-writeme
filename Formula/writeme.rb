class Writeme < Formula
  desc "Writeme CLI — open notes and query Writeme from the command line"
  homepage "https://writeme.dev"
  version "1.0.0"
  license "MIT"

  on_arm do
    url "https://github.com/g4rcez/writeme-editor/releases/download/v#{version}/writeme-darwin-arm64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  on_intel do
    url "https://github.com/g4rcez/writeme-editor/releases/download/v#{version}/writeme-darwin-x64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install Dir["writeme-darwin-*"].first => "writeme"
  end

  test do
    output = shell_output("#{bin}/writeme query 2>&1", 1)
    assert_match "Usage:", output
  end
end
