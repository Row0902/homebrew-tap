class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.21.0/cutver-plugins-0.21.0-macos-arm64.tar.gz"
      sha256 "30c32d785d2031ce12eb1afbfa8c1db4c3547697e93a60cab9492723698c4463"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.21.0/cutver-plugins-0.21.0-macos-x86_64.tar.gz"
      sha256 "ad55d87740978fa49e7c736a7cd91f2545035f62bfb9ce9b273324bf66a72c95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.21.0/cutver-plugins-0.21.0-linux-musl-x86_64.tar.gz"
      sha256 "b98443b1eb02d3d72f85dbb1efd31d22b81c8ce40b4005cbc99886e1a44d674d"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.21.0/cutver-plugins-0.21.0-linux-musl-arm64.tar.gz"
      sha256 "0eb7f0f3e0b1712536cd4a6d7483c40eaed736ad01f2e47e5c383690cce2c2a8"
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
