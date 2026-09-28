class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.9.1/cutver-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "9270f21c529a8a1a0f73eaecd06424f4d76046a9aae5c464d145e81a02f52ae4"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.9.1/cutver-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "4d70a7327589013c943e5748347d93ae0734e1edd40ee1fa46c606323baec3b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.9.1/cutver-0.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b32401189eea447108c37a16b384cd9678d8a682994a74be5e10355212af8c67"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.9.1/cutver-0.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b32401189eea447108c37a16b384cd9678d8a682994a74be5e10355212af8c67"
    end
  end

  def install
    bin.install "cutver"
  end

  test do
    assert_match "cutver 0.9.1", shell_output("#{bin}/cutver --version")
  end
end
