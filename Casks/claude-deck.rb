cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.14"
  sha256 arm:   "c68efa54d1455650c8d75c27a12ecbe4dbd639fee946814ba86a9cbc02276595",
         intel: "50e4ccabccddf56244285cd13afb182a724a69e8b97e65625c6b7de41332ebcb"

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
