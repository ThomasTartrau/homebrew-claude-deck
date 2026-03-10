cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.21"
  sha256 arm:   "6c2dc31a483f12b1548311ded109bd6b38a125c2ab117aed4d5bd1092d1b25a6",
         intel: "e0e266811be005dc7891d999799004f4aa4d389f967f51e386e3722d51f73a74"

  url "https://github.com/ThomasTartrau/claude-deck/releases/download/app-v#{version}/Claude.Deck_#{version}_#{arch}.dmg"
  name "Claude Deck"
  desc "Desktop app to manage multiple Claude Code sessions"
  homepage "https://github.com/ThomasTartrau/claude-deck"

  depends_on macos: ">= :catalina"

  app "Claude Deck.app"

  zap trash: [
    "~/Library/Caches/com.claude-deck.app",
    "~/Library/WebKit/com.claude-deck.app",
    "~/.config/claude-deck",
  ]
end
