cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.6"
  sha256 arm:   "ba7c95e982e4ccba6f5f9de881a4d1906921495bf2c415473bb709f654e8903c",
         intel: "db09d866e8bc8de39b7185747b62c9b17ce118cf5feaa2dffa0a7c5a95bed8ab"

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
