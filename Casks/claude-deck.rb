cask "claude-deck" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "e4d5836a7d801422d8bfe253c93fa801d4bf6f27eea5d7a95ecd9779ab89a04a",
         intel: ""

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
