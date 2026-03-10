cask "tokemon" do
  version "4.0.3"
  sha256 "5d84d03ed755dd4d27f902438b1b2c6e906e3c6881bc85ba872830586b7e2336"

  url "https://github.com/richyparr/tokemon/releases/download/v#{version}/Tokemon.zip"
  name "Tokemon"
  desc "Monitor your Claude usage from the macOS menu bar"
  homepage "https://tokemon.ai"

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
