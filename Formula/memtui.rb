class Memtui < Formula
  desc "Interactive TUI for browsing and inspecting key-value stores (Redis, Memcached, etc.)"
  homepage "https://github.com/dmk/memtui"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-arm64.tar.gz"
      sha256 "410eea07fa79927b7281887cc1db6f1b5f1a7f888c16449d842a1591281bb389"
    else
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-x86_64.tar.gz"
      sha256 "e217a9d3c12f8c355870cfc2c5d98819ddc0dd0e5910a611de418ccd1a14d3af"
    end
  end

  on_linux do
    url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-linux-x86_64.tar.gz"
    sha256 "1d07ed544c9f1b33de1095799fbfb75ec6ff00882b4a2f3b04e63bec1a8fb9a9"
  end

  def install
    bin.install "memtui"
  end

  test do
    system "#{bin}/memtui", "--version"
  end
end
