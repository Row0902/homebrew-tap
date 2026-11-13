class CutverPlugins < Formula
  desc "Cut a release. Bump SemVer. Every project, every language (plugin-enabled build)"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.2/cutver-plugins-0.18.2-macos-arm64.tar.gz"
      sha256 "64d7d3e71acdaa99155eab4ad89af34e3cf56b7ae752bb3a276417ab8426f745"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.2/cutver-plugins-0.18.2-macos-x86_64.tar.gz"
      sha256 "9c7f4bd6019f395168d3ca140eb95f290355e5d0deca82f57bcbd680024b86ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.2/cutver-plugins-0.18.2-linux-musl-x86_64.tar.gz"
      sha256 "122d382e9c176500e3a2161bc29e9ad1a57cc245107e9f4c5c74c1c7e5397476"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.2/cutver-plugins-0.18.2-linux-musl-arm64.tar.gz"
      sha256 "fb0496ec4234c4acc3c4ef1649b24dc1cbfcb2da0adbec5b86227f53ff4de198"
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
