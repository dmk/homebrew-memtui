class Memtui < Formula
  desc "Interactive TUI for browsing and inspecting key-value stores (Redis, Memcached, etc.)"
  homepage "https://github.com/dmk/memtui"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_ARM64"
    else
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_X86_64"
    end
  end

  on_linux do
    url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-linux-x86_64.tar.gz"
    sha256 "PLACEHOLDER_SHA256_LINUX"
  end

  def install
    bin.install "memtui"
  end

  test do
    system "#{bin}/memtui", "--version"
  end
end

