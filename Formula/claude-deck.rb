class ClaudeDeck < Formula
  desc "TUI dashboard to manage multiple Claude Code sessions via tmux"
  homepage "https://github.com/ThomasTartrau/claude-deck"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-apple-darwin.tar.gz"
      sha256 "76b12ec7fce6f387e18f64d04795ccbcca8d4b05007d00dd590c7eb2c50e796d"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-apple-darwin.tar.gz"
      sha256 "b8dc7a724aec1c682460ac3635b4144b0b17bd7e0ec55b7f7758f7a27a57ed95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d0503a181b931df2d793bb36bc3e7e93def53f9417b58eac2104721b550ec82"
    else
      url "https://github.com/ThomasTartrau/claude-deck/releases/download/cli-v#{version}/claude-deck-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94a4181a6f07637819fdeef663b8a5094f21b8bfab6dfb4d19ae3baeda50297f"
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
