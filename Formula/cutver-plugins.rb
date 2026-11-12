class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.14.0/cutver-plugins-0.14.0-macos-arm64.tar.gz"
      sha256 "781798ed0254ffb2b265e82b73280d4cb30ec9ab8b2ecc2a5f3dd346cc9226e9"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.14.0/cutver-plugins-0.14.0-macos-x86_64.tar.gz"
      sha256 "0a79c584a891b28fffa4a2e31427cf89ff75cf4fa75cab89da0a8e8bb38f2bc5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.14.0/cutver-plugins-0.14.0-linux-musl-x86_64.tar.gz"
      sha256 "6011721015b430a15e64019704f0fabe2122562c1ce1cf97e587e8206dfa6c2c"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.14.0/cutver-plugins-0.14.0-linux-musl-arm64.tar.gz"
      sha256 "5a5f453bdefcf5ae6ee0286ff542256f0001e6584c9ca1f8fe191282d8ddf981"
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
