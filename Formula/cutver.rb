class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.20.0/cutver-0.20.0-macos-arm64.tar.gz"
      sha256 "5b15fde336a80d7c0f87e2572b3848941f350a2e85198dd6f1a442c9c5925d07"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.20.0/cutver-0.20.0-macos-x86_64.tar.gz"
      sha256 "c2bf38217904cb1b418c8715b51ca2cd08df7974c22ac2f7520b1e79b8f1d8b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.20.0/cutver-0.20.0-linux-musl-x86_64.tar.gz"
      sha256 "c1822f9aba41dfe1ed5ec962b1e73be5511351a80ad1d27ea8f6901b6724a4fa"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.20.0/cutver-0.20.0-linux-musl-arm64.tar.gz"
      sha256 "4ce1c59a942438f27c2b8700ab20cd09d58dbc8716c7a1b5ac2f07cf3e7c7a1a"
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
