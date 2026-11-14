class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.19.0/cutver-0.19.0-macos-arm64.tar.gz"
      sha256 "640d12d082736cc104a37632a0cf8c22be5cd431a391210de92df109b9f2bb9c"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.19.0/cutver-0.19.0-macos-x86_64.tar.gz"
      sha256 "fe72047b44c96b280e3c9edc35ab0e79dbfce75b911b71e0debf3776f0b2bc25"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.19.0/cutver-0.19.0-linux-musl-x86_64.tar.gz"
      sha256 "56a436736160853dc3fcfd2e74dce6c1a8f2e029958dbbcfa4bee2de2bc78744"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.19.0/cutver-0.19.0-linux-musl-arm64.tar.gz"
      sha256 "6abd0075e364c441bdfe7306032cb782aaca1e6ea8aa9e703d58c1c618090937"
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
