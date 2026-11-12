class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.16.0/cutver-plugins-0.16.0-macos-arm64.tar.gz"
      sha256 "dc0d04f10b463a7bf3b3945d2a32334fa5b97c4eb4d92a339480a7ec607a3ed0"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.16.0/cutver-plugins-0.16.0-macos-x86_64.tar.gz"
      sha256 "c592f53ab075646a2ab4ff96d30518c5c5cbdadf80ba43cdf9e3ed3d8cfe963a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.16.0/cutver-plugins-0.16.0-linux-musl-x86_64.tar.gz"
      sha256 "d3ed512566cebbdfc083ce66f1fd6a701ed50671e4e9da8e53920ef275f304c9"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.16.0/cutver-plugins-0.16.0-linux-musl-arm64.tar.gz"
      sha256 "45ad24a4658a7f5e3c063154d89650240ded9100c57a5f6e7b6b3ea15331c11d"
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
