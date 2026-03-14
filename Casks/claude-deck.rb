cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.28"
  sha256 arm:   "2806a58b78a62e63657bef759bc5bc65c96acfa60ef61cf36881ea111169db8b",
         intel: "da29bd1b65c373dcedc51379f1b9b503c19d2327749fea41e5b7266a670b2171"

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
