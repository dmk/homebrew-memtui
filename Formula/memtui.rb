class Memtui < Formula
  desc "Interactive TUI for browsing and inspecting key-value stores (Redis, Memcached, etc.)"
  homepage "https://github.com/dmk/memtui"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-arm64.tar.gz"
      sha256 "794bf625be634f224dc2691db878350809aeba3fe6ab362e861d7fa448e23506"
    else
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-x86_64.tar.gz"
      sha256 "c5c08432b796fe00d7c7a04edc6253c02f1e0c98684e0fc547b82112b120a72c"
    end
  end

  on_linux do
    url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-linux-x86_64.tar.gz"
    sha256 "c7bc0bde448e349592225cb10ab522b0ffd9318b3e62c6d8b9177ada55f2f7f4"
  end

  def install
    bin.install "memtui"
  end

  test do
    system "#{bin}/memtui", "--version"
  end
end
