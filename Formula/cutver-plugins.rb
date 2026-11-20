class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.20.0/cutver-plugins-0.20.0-macos-arm64.tar.gz"
      sha256 "71e61f0235c2abeaabcc7d4f4c90ec6cf82de9797bce5cd83fac1d3f539092f2"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.20.0/cutver-plugins-0.20.0-macos-x86_64.tar.gz"
      sha256 "7b3f049d143f8ad93d69d0bfba77272ecb16ab2d23d6d3c74292300009fef397"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.20.0/cutver-plugins-0.20.0-linux-musl-x86_64.tar.gz"
      sha256 "8c793363140e4c71804a5fff0389fa2175edba234fb9234139df859db0c686c1"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.20.0/cutver-plugins-0.20.0-linux-musl-arm64.tar.gz"
      sha256 "e20e67404745aea899719f4cd6d93ecad60eb988caf5c0304b3089f6b20457f4"
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
