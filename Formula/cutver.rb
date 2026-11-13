class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.2/cutver-0.18.2-macos-arm64.tar.gz"
      sha256 "dd2f7210cb9c2e01effb9c2926178a3ee3765569dbc4d771e8355736816a2aa6"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.2/cutver-0.18.2-macos-x86_64.tar.gz"
      sha256 "ac61de558511cafdaf501c281c70ac93f35aacce3cf70422a3c7184336a60ab1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.2/cutver-0.18.2-linux-musl-x86_64.tar.gz"
      sha256 "3fa87d2329e2ff74955893c9c5f35bb68276fc79ec36d84fd46eb7d2410732d6"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.2/cutver-0.18.2-linux-musl-arm64.tar.gz"
      sha256 "6a849109f0d1c566775501b743f067b76fb25f6c91ca784a9ae2ce68ac28d6e6"
    end
  end

  conflicts_with "cutver-plugins", because: "both install the cutver binary"

  def install
    bin.install "cutver"
  end

  test do
    assert_match "cutver #{version}", shell_output("#{bin}/cutver --version")
  end
end
