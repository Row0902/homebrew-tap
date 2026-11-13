class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.1/cutver-plugins-0.18.1-macos-arm64.tar.gz"
      sha256 "d23b9e5a775e7bbbe9069ae55aa55d93ec1de414be6fc6120550ae7bb5ef3ecd"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.1/cutver-plugins-0.18.1-macos-x86_64.tar.gz"
      sha256 "2909b8c9c3d7f09091d43a52b9c10f8865a5ecaead8d67933b413552c0de8ed6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.1/cutver-plugins-0.18.1-linux-musl-x86_64.tar.gz"
      sha256 "80a36ef6bed5bee9dd649f6dd708a4f38fb9b7fb57b5864ffd3b8358574c70cc"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.1/cutver-plugins-0.18.1-linux-musl-arm64.tar.gz"
      sha256 "dd3c0a3da74832dac1f02ccfdddfd986e35f6254dda4279411dff16fcc3fa786"
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
