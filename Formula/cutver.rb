class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.1/cutver-0.18.1-macos-arm64.tar.gz"
      sha256 "f68dcfd454ce3517a00b81a86f32af4ee1360c99f84ac75a732f3ee3d5ccfcb1"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.1/cutver-0.18.1-macos-x86_64.tar.gz"
      sha256 "fa8717e265dbfbfff2d6c7fcc8ecbf843076039cec576d9de1dd862644eb3e48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.1/cutver-0.18.1-linux-musl-x86_64.tar.gz"
      sha256 "f76de44a7c154db57ee5698d64c13367e80ec6950f216d51ec346e209bcfe943"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.1/cutver-0.18.1-linux-musl-arm64.tar.gz"
      sha256 "b9fe9dd6d20cc00b319d78b0ab493cd082d8b88f63396376fd809ee1253dd726"
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
