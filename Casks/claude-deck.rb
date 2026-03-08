cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.8"
  sha256 arm:   "0fd1fd5c4433ba534ea995fd1c200d4d7a64da306517a0c3b08ede335107919e",
         intel: "ecaf5423558bf00580ab210f1e8536fefdde508a33edc481c84b74bce93d98a0"

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
