cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.20"
  sha256 arm:   "d28c5e20010a6eeb368e4253746d72c31910d7ab771a290b4ed8e2d8422c0fde",
         intel: "a1a01783f4e04de46d4893543c5919e9c844a61b6782406ae1bdbdc261e6f41a"

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
