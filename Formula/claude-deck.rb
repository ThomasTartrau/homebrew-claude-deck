class ClaudeDeck < Formula
  desc "TUI dashboard to manage multiple Claude Code sessions via tmux"
  homepage "https://github.com/ThomasTartrau/claude-deck"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-apple-darwin.tar.gz"
      sha256 "0ee6e1f5b0c84d3e20396ad7540ed7b783e8bba4a0b34658e02d47209551d54d"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-apple-darwin.tar.gz"
      sha256 "c7a03badbf8b69c5ea3212c5bd859a29d4c89bb59d18e0598ec415bd7891afbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f55c9bae65592c1de9ca10ffbc99b05af9f309d6dbcabfd20021a03025294a0c"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f2dd3db8fd47855226a45a9dc4ac21673bb55d2e38476344118666a323e1487"
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
