class ClaudeDeck < Formula
  desc "TUI dashboard to manage multiple Claude Code sessions via tmux"
  homepage "https://github.com/ThomasTartrau/claude-deck"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  depends_on "tmux"

  def install
    bin.install "claude-deck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-deck --version")
  end
end
