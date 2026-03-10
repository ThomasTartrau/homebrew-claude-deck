cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.24"
  sha256 arm:   "eb67338b023d6fb1533a164416d8ff6aba7a2afddc09d1bd40a1d47517907627",
         intel: "8a2f579343b12bba38fca9a92e2e35f88976a7d0355544fbc08c8294b23a41e1"

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
