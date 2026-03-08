cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "4f3e0f21e2e506e7971de6cbc66696b9f9350180e72049f019e53cb29db4a8ea",
         intel: "d2e23cb5ef49bed395ca8557283e35cde2209016b198d7a979d8beb5b3b37453"

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
