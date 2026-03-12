cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.27"
  sha256 arm:   "00f0440a2c014bcea3fb0cb8df9dff02f9d16f4f3344dccef4103e6994e4b424",
         intel: "e5e9e93572eed82da60897be203b07f23f8b9655331e47266e1237178956d4a9"

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
