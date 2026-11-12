class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.17.0/cutver-0.17.0-macos-arm64.tar.gz"
      sha256 "4367e3dbb5f136d7cfe0888f6364a6df7bf62049e8ef1e7c37dbeb2c47ea6906"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.17.0/cutver-0.17.0-macos-x86_64.tar.gz"
      sha256 "3f8d1043880260919bd2f3fbcaf063a53e327c6aedf75dbb15e3e92d69dc132c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.17.0/cutver-0.17.0-linux-musl-x86_64.tar.gz"
      sha256 "648f084423e535d8a01653a2b4af0875f9f6c7048639b7322cb49a99434063a0"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.17.0/cutver-0.17.0-linux-musl-arm64.tar.gz"
      sha256 "1d39eb9d54ad13df2684a5daa141a5080c84e8e2b5845b842a096b48a114183d"
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
