class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.16.0/cutver-0.16.0-macos-arm64.tar.gz"
      sha256 "3c5325a1f3896d936c7440b985b6e1703cd2c0ec196fffe50b503211c9bc4acc"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.16.0/cutver-0.16.0-macos-x86_64.tar.gz"
      sha256 "a99cb3652d2d12e048701a66fa8e932895c14c231987a932052ce44f9d290949"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.16.0/cutver-0.16.0-linux-musl-x86_64.tar.gz"
      sha256 "2c3a972f5abf26cf2022311afe87ccb15add23ce05c49c54676abb545069cf44"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.16.0/cutver-0.16.0-linux-musl-arm64.tar.gz"
      sha256 "c647e13583e9e97dff5fcead9cad861b81a2f74ba2de59c8defafc9d49fb3a35"
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
