class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cutver/cutver/releases/download/v0.8.0/cutver-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "4dadd97f2b1587ea891acc18b573fe6b2af39966210946f8ab401116440ded2a"
    else
      url "https://github.com/cutver/cutver/releases/download/v0.8.0/cutver-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "af4edac0771091fa6f9cbc5fe047095cb071cc34e603ab02b9445f28c16f651d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cutver/cutver/releases/download/v0.8.0/cutver-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b912edc504d1babb7b6f887d80dcbdabe44359b40ea1f7c17793e9bfb77cac3"
    end
  end

  def install
    bin.install "cutver"
  end

  test do
    assert_match "cutver 0.8.0", shell_output("#{bin}/cutver --version")
  end
end
