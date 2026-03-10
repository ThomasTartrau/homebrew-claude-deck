cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "4990cacc152af4859586b92b9c7dcc540720577e20e1af874e7d355ad8551882",
         intel: "1d2269028fc09daabfe8967cc6ffd2aecd95412c41854cc0a02a8ff09834b8ac"

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
