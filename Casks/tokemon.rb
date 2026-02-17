cask "tokemon" do
  version "3.0.4"
  sha256 "a18998a7770a06288269b72310247f11a7564273f6fef16f2ba037e5b134aadc"

  url "https://github.com/richyparr/tokemon/releases/download/v#{version}/Tokemon-#{version}.dmg"
  name "Tokemon"
  desc "Monitor Claude Code usage from your macOS menu bar"
  homepage "https://github.com/richyparr/tokemon"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Tokemon.app"

  zap trash: [
    "~/Library/Preferences/ai.tokemon.app.plist",
    "~/.tokemon",
  ]
end
