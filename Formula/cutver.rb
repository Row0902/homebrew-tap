class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.13.0/cutver-0.13.0-macos-arm64.tar.gz"
      sha256 "93616dcf65bc04cd9064c599d9cbc10de4e90a59799768f06b0fed812d728e80"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.13.0/cutver-0.13.0-macos-x86_64.tar.gz"
      sha256 "dde353fdab037d7ff38b539390771b21d3d0384a40d2249f10858003ded6643b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.13.0/cutver-0.13.0-linux-musl-x86_64.tar.gz"
      sha256 "570d4598357bcdf82b4fe61ea41dac7fb0b52b8f091535b4b4891deb3b00eaf7"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.13.0/cutver-0.13.0-linux-musl-arm64.tar.gz"
      sha256 "3f94a82fc7ec54d5ef8f6041dd84f0832c9ecef838d7b5d93d753cc7ba2ad323"
    end
  end

  def install
    bin.install "cutver"
  end

  test do
    assert_match "cutver #{version}", shell_output("#{bin}/cutver --version")
  end
end
