class ClaudeDeck < Formula
  desc "TUI dashboard to manage multiple Claude Code sessions via tmux"
  homepage "https://github.com/ThomasTartrau/claude-deck"
  version "0.4.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-apple-darwin.tar.gz"
      sha256 "a9ed07fb4cc35b167e81c18065c9ea80c84df7cd73cba2eaf4a7df61a7cdafa8"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-apple-darwin.tar.gz"
      sha256 "c0ca93cb721c1e9a5241b274a0df23e067c30b17c6e4ae0f3254e9c043b35f50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53bdec5c1e0bc7cd153bd677f6921ca680920b626171b5ce296bc6369f921c14"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49711a9f6d280101d705866b5cc1558bbfa7150d97c3396b80ffdb6c7ff96fe4"
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
