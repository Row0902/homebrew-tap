class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.15.0/cutver-plugins-0.15.0-macos-arm64.tar.gz"
      sha256 "db9b71e9de435db1dcf6c989e73ce0692a7b56e4c66e8371cf55e2a1a201cdad"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.15.0/cutver-plugins-0.15.0-macos-x86_64.tar.gz"
      sha256 "cae604447e61f3bc024e38a6ad0abb3a4d0dff3d082d79923fe9c64713cf3746"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.15.0/cutver-plugins-0.15.0-linux-musl-x86_64.tar.gz"
      sha256 "98dfd1b3bbf67e7ee4fa35eab7d2b15f2499a72eae15fb1928979dc88311a145"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.15.0/cutver-plugins-0.15.0-linux-musl-arm64.tar.gz"
      sha256 "1dcbe3b6d7ed7e297019487555dd79ed735b198105238210500bf740cf39b137"
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
