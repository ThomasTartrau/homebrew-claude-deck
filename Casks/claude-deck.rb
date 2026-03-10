cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.17"
  sha256 arm:   "2387f2424b976a786335f6cfb3eaead1ea84a62bba5fccbff5c4ca7d562e3d9e",
         intel: "9b71359d172b6a8a6ee87a348b20fb85c4b34c365a04ac6e5b4bc55cce483310"

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
