cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "6a998b8171f97a5ab9425ae925021f6f1b56529feba936e93cc5ca098a1fa28e",
         intel: "8546dbab3beebd45527eef5aafa257f550a1cf1a0b5b461bcd96a6fba368a717"

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
