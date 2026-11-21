class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.21.0/cutver-0.21.0-macos-arm64.tar.gz"
      sha256 "a94a3cc6a9d332b2b810c42b9df106f4e7c79db8851a0145fcccb26f01ca0dd9"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.21.0/cutver-0.21.0-macos-x86_64.tar.gz"
      sha256 "6e49f910a00a469d3ecad624e2b3349a6342dabdf293455ec0e03622f23ed590"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.21.0/cutver-0.21.0-linux-musl-x86_64.tar.gz"
      sha256 "7e389159c380215224092c6a2ef18767af65fa7fefae0a360caf075b0525134b"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.21.0/cutver-0.21.0-linux-musl-arm64.tar.gz"
      sha256 "b3ea6dc4140823c4df49c4571e18dfae2f8eb14d9e66c1dc53c20ae464bc41f6"
    end
  end

  conflicts_with "cutver-plugins", because: "both install the cutver binary"

  def install
    bin.install "cutver"
  end

  test do
    assert_match "cutver #{version}", shell_output("#{bin}/cutver --version")
  end
end
