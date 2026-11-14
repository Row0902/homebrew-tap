class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.19.0/cutver-plugins-0.19.0-macos-arm64.tar.gz"
      sha256 "71a5136f0b143f67b6358a34414c89a5ccf2e9b825a91b1f66a82a86f14dc4ae"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.19.0/cutver-plugins-0.19.0-macos-x86_64.tar.gz"
      sha256 "012eae45d7a9e9079dd7383991723c75f3e6632def0785e36e89aef4fae6448c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.19.0/cutver-plugins-0.19.0-linux-musl-x86_64.tar.gz"
      sha256 "7acb2c18b4ffab70a8422f9f297373d1c0696efcc43f85b05162b18c86dd94a8"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.19.0/cutver-plugins-0.19.0-linux-musl-arm64.tar.gz"
      sha256 "ae6caba7f45805600f70e1d89df3062a9c4b021081f7c7fa07a6b9b2e8ed682c"
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
