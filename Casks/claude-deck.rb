cask "claude-deck" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.12"
  sha256 arm:   "b7895f7b8a75bbcdf747baf2269064e654254902c8bba253fdf8747ee04baff8",
         intel: "4e3248d44a48ecf915e756a8cf443a31e0fd6d6b34f5cc273a2266f77054d94a"

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
