class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.10.0/cutver-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "ab6277110a340ed07eaf294c8e94d086c6b68a85b09adfbc25a4894c7c68fee3"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.10.0/cutver-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "e8019479bc86fdf58e9374e69001daf42892c01800c0ee2c8e30c2edcbe2940d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.10.0/cutver-0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06d4716150ddbe41d2eb8ead5c4285d0a4afcafae9e32f96ff4f3a46fd539d8e"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.10.0/cutver-0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06d4716150ddbe41d2eb8ead5c4285d0a4afcafae9e32f96ff4f3a46fd539d8e"
    end
  end

  def install
    bin.install "cutver"
  end

  test do
    assert_match "cutver #{version}", shell_output("#{bin}/cutver --version")
  end
end
