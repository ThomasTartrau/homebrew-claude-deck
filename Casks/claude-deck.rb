cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.23"
  sha256 arm:   "732a4e2dee40807d3bc50a8cdad84d87ecb54c0392b9cf937a3321a78f4c4ae2",
         intel: "ebeb3f9107993eb5630ab049960ca6ed1f2b8d8a6d0ac846729127902b92a784"

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
