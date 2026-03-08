cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "17df3e3a3b5e7f7c93e1004bfb817bb620b1cb804f7d983f0e0bf99ae5c9a355",
         intel: "062f850e872d5785c55c0fe0853b4b2ae062bfa40adf4866b33c0132051b3c64"

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
