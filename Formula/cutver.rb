class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.12.0/cutver-0.12.0-macos-arm64.tar.gz"
      sha256 "b95c07487b1abb84d6b5d709cac1ba6c20d14d7480e2a47c02d0377a00b3aa89"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.12.0/cutver-0.12.0-macos-x86_64.tar.gz"
      sha256 "d4a53a440c972038702124a32dc1dc7266b256c439fd3c52a1f91e4d33248247"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.12.0/cutver-0.12.0-linux-musl-x86_64.tar.gz"
      sha256 "7c6cb090e4935489eb54e6ef3a42193ace81a691ec614364f211522638aafafa"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.12.0/cutver-0.12.0-linux-musl-arm64.tar.gz"
      sha256 "64d5366f8498b1bf6ed2b6e72a9d85df7ffc0c64ed4b2e85af60bb8a109304d9"
    end
  end

  def install
    bin.install "cutver"
  end

  test do
    assert_match "cutver #{version}", shell_output("#{bin}/cutver --version")
  end
end
