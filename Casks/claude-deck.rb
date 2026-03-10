cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.25"
  sha256 arm:   "9ae85dccf91febdeb2a92ecba02c3ec7c12822f61ff34d2e286aecb595582704",
         intel: "ad36986c4dd667ca34540519f10ce38150ef412b57e177edb12f003da6d861eb"

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
