class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.13.0/cutver-plugins-0.13.0-macos-arm64.tar.gz"
      sha256 "f8bcfed9f788c27643d4741d638899936b1810d232360cd377987b9ba03c862e"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.13.0/cutver-plugins-0.13.0-macos-x86_64.tar.gz"
      sha256 "4facc758ee9e087b51cfd7d002eba25a50fc7c3ec0e161deafc21526119ef18d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.13.0/cutver-plugins-0.13.0-linux-musl-x86_64.tar.gz"
      sha256 "14eb84b4b23cd1e526fc9ba987aaa0ea11f16f35b2ff0bbe2cdf826c567b89fd"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.13.0/cutver-plugins-0.13.0-linux-musl-arm64.tar.gz"
      sha256 "76df26a9efe87b9fc5945db1db7412809d39659f2dc0435d54b5ee287e76e6b0"
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
