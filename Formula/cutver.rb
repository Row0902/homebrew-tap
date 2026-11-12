class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.15.0/cutver-0.15.0-macos-arm64.tar.gz"
      sha256 "8bf1dac694cbcf172d8e937371f215069bd8c5377fe1ecfca59666e26bf4e3ab"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.15.0/cutver-0.15.0-macos-x86_64.tar.gz"
      sha256 "1b7303db769205474906927d0390ed8f69fb620db092c14fbc9476417d54aada"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.15.0/cutver-0.15.0-linux-musl-x86_64.tar.gz"
      sha256 "25ddda7ef49da5a277073508897a53b8648d3c5641423cb01a7f81a86c02d459"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.15.0/cutver-0.15.0-linux-musl-arm64.tar.gz"
      sha256 "d8ccb0948fe1d2be6c4ded749fb6d887601edbdabd358e4865f94cf229d3a3e1"
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
