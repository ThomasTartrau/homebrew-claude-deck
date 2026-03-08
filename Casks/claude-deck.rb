cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "16cff2efe881ce9b63b2160ce1149fe6b1b484c24ce18e96c1ce07895b4d50e7",
         intel: "c3eb1e756b1e481f0ff2d9631d397e9a50b0d69be8691e2549b177980d6603a4"

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
