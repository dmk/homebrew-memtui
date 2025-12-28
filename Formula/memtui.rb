class Memtui < Formula
  desc "Interactive TUI for browsing and inspecting key-value stores (Redis, Memcached, etc.)"
  homepage "https://github.com/dmk/memtui"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-arm64.tar.gz"
      sha256 "afa85fb57a0daddc5724a733a086e44534476eee5ff22602beca78a1dd91ea18"
    else
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-x86_64.tar.gz"
      sha256 "69fd87ecc49df00b5544a6074e40755252aa02f641156024aa2ef090c9b1ae34"
    end
  end

  on_linux do
    url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-linux-x86_64.tar.gz"
    sha256 "9fc152fd315a6b77a57273e3a656d27c68dfe7ccfa79fdc0f5f5bf4b215b186f"
  end

  def install
    bin.install "memtui"
  end

  test do
    system "#{bin}/memtui", "--version"
  end
end
