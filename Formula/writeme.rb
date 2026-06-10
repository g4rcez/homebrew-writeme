class Writeme < Formula
  desc "Writeme CLI — open notes and query Writeme from the command line"
  homepage "https://writeme.dev"
  version "1.0.11"
  license "MIT"

  on_arm do
    url "https://github.com/g4rcez/writeme-editor/releases/download/v#{version}/writeme-darwin-arm64"
    sha256 "05b527f8b406f369e6d08193d803e68e78ee40b1a330c4a755848c7c4a443b15"
  end

  def install
    bin.install Dir["writeme-darwin-*"].first => "writeme"
  end

  test do
    output = shell_output("#{bin}/writeme query 2>&1", 1)
    assert_match "Usage:", output
  end
end
