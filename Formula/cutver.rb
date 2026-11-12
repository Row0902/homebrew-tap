class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.14.0/cutver-0.14.0-macos-arm64.tar.gz"
      sha256 "3e93c0299516c7c9aff80cd0a71e9dbf29004d3b6a4d2b87c146b851bc534d0a"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.14.0/cutver-0.14.0-macos-x86_64.tar.gz"
      sha256 "a8333dd67abeb14486449fc43e688674b9764354b790011b701475dbcb89735f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.14.0/cutver-0.14.0-linux-musl-x86_64.tar.gz"
      sha256 "0d5028ebb5a7807af9bd2123b8f382784b234275163f8223ddbd1e0b9b68e7dc"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.14.0/cutver-0.14.0-linux-musl-arm64.tar.gz"
      sha256 "940d756e768ebeac510da9b3b35b5f4148b21ac1c8a80a08f863b37b0acd638d"
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
