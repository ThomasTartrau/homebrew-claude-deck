class ClaudeDeck < Formula
  desc "TUI dashboard to manage multiple Claude Code sessions via tmux"
  homepage "https://github.com/ThomasTartrau/claude-deck"
  version "0.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-apple-darwin.tar.gz"
      sha256 "39df2a5e5aa24d4d5ad0ebc46e3065335cd2ce3d396e0ebccfabc91e510c0e5a"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-apple-darwin.tar.gz"
      sha256 "9a808367319ad9cc02cb66b8aca05de74b25417e739b993cef7a9d9e475dfb49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6aa5a5366e5703c032be8ca6bca3d25dae5ebdde7e286777064142f07a20e4c5"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "954c7de812c959b39267180f6f1bea36fc3924e621cfd9d8c16cfea2eba66dab"
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
