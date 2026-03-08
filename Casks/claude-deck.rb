cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "fd5e7584687439de63e371c02046d841e6e909b2d57a3750a80abd933ccb1627",
         intel: "d78d98987d4c40585433511e8367c71c1726531276e8a536f2a21cf20dc585b6"

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
