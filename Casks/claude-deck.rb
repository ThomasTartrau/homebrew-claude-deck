cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.22"
  sha256 arm:   "205524c559e9ac1a36febb6953b18bc4efb3b48428d0c805e61ef41ce03ad56c",
         intel: "96c6705434c2a86088025dc29401e95b10cccb87a4659c152bf7bd051a64a039"

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
