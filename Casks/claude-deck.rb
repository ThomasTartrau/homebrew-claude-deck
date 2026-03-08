cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "02c5fb2a9a05191742cd3abd9f0d6368c0a49f680ad931bfa4271dcc5d942364",
         intel: "f716042d2327fbe96fc2e204be1af806c1c6656c60a83cde4d088fb31281f754"

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
