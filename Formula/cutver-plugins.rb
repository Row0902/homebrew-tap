class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.0/cutver-plugins-0.18.0-macos-arm64.tar.gz"
      sha256 "b87fc102e04cddb2915f0fcb99772696fba4b4d47f6fd9d3cc0ed69fc86315cf"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.0/cutver-plugins-0.18.0-macos-x86_64.tar.gz"
      sha256 "a0e4e53af8761fb01754d1ab4adde482a354bf60ac77ccb37ac60481070335d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.0/cutver-plugins-0.18.0-linux-musl-x86_64.tar.gz"
      sha256 "308a08d048cf023d4fd31435c5d551bf1fb9f8122afb15406948c4b341a3bea4"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.0/cutver-plugins-0.18.0-linux-musl-arm64.tar.gz"
      sha256 "b0f8158a99c3110c8857729f8551cd139132b4534b46cf4c1d6afc2842bfcea2"
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
