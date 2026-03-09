cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.11"
  sha256 arm:   "a24c907dd14dbd60a25f426ae65fe7e16259ba8cf72a89168eae3f07080579b0",
         intel: "9d33ec8dcf67c206dab284b1937e98838f7b89d46e2030924e249e0d92a2c394"

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
