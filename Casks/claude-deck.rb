cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.15"
  sha256 arm:   "5d0580a5a178c6adf1cd827c181d4cb696912a5fe111af5a85937fcc7d53018c",
         intel: "745a11ce35aeed82d81a92b76fd61ca84bea5cd1b8bdcc87f192fbaabdf2a962"

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
