class Memtui < Formula
  desc "Interactive TUI for browsing and inspecting key-value stores (Redis, Memcached, etc.)"
  homepage "https://github.com/dmk/memtui"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-arm64.tar.gz"
      sha256 "4f3745c9f9430b3ed1f2e24c499fca660c6677137d45c7b96369c1ceb7f80c4a"
    else
      url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-macos-x86_64.tar.gz"
      sha256 "1fd385c580e18222c99c4ebeb790ff4c5af20aa9005f4dcb74b690ce3d9c0f8e"
    end
  end

  on_linux do
    url "https://github.com/dmk/memtui/releases/download/v#{version}/memtui-linux-x86_64.tar.gz"
    sha256 "5e3c762af3d42b3533f414ef8434d85f98579b82acff549f02bd5a5c994bbd97"
  end

  def install
    bin.install "memtui"
  end

  test do
    system "#{bin}/memtui", "--version"
  end
end
