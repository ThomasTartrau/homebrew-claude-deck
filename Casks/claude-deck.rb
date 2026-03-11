cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.26"
  sha256 arm:   "1a5d9601fda25eadb700d0fd455c7c33bf47d1c4e28d4970c51371374b4d876b",
         intel: "61df751031af70703cc7a27ed07e74e9c89f779ddc4e504d276a00fed9d12759"

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
