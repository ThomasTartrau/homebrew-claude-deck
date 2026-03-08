cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.5"
  sha256 arm:   "f0c457128a835edaa00c308f6ad27acac2f93174c098460e780950ddb0791054",
         intel: "991a36ea7e533908b5e76423bb64c67c343ec32d633528bb6aca88b67814d438"

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
