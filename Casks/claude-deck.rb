cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.16"
  sha256 arm:   "6d3c0e28560cdd942193fd3c4f86f1517537b65e1e9cdec10db4b1c755a8655a",
         intel: "3e438662fc18ec99e311250f07f3354ec7a223047579795ba331928430f0e9c8"

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
