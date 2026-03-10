cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.19"
  sha256 arm:   "9db51bff2d93ab7f1ba5cc8556fe2f395236071f13ae4a77424d62dd2ae8a1e9",
         intel: "49db0a563a709d451dc79c057fd111f35f3878a7382d4ea9b15b8543d736ef43"

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
