class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.17.0/cutver-plugins-0.17.0-macos-arm64.tar.gz"
      sha256 "23ab61553044cd19bc82d4822da3553a2d4308b82f2f1ddde42449eae1e8be82"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.17.0/cutver-plugins-0.17.0-macos-x86_64.tar.gz"
      sha256 "721e3d287c74ef1b90ebe2dd4f7af73c21c28f8e2fc9b414bd5ca908fd357c8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.17.0/cutver-plugins-0.17.0-linux-musl-x86_64.tar.gz"
      sha256 "6107fc40af8b8ef3f8f665f5183361b3eae93a5f118c39afa744236ecf29b324"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.17.0/cutver-plugins-0.17.0-linux-musl-arm64.tar.gz"
      sha256 "90c78d46cd251246f11e565a7f4b2f75ebe108d65538649909798f7213b936f1"
    end
  end

  conflicts_with "cutver", because: "both install the cutver binary"

  def install
    bin.install "cutver"
  end

  test do
    assert_match "cutver #{version}", shell_output("#{bin}/cutver --version")
    assert_match "plugin", shell_output("#{bin}/cutver plugin --help")
  end
end
