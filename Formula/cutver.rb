class Cutver < Formula
  desc "Cut a release. Bump SemVer. Every project, every language"
  homepage "https://github.com/cutver/cutver"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.0/cutver-0.18.0-macos-arm64.tar.gz"
      sha256 "76c696301a003c7fe1b5e49f04dd2914d5873d9837c77e9951f4785ffafe85c5"
    end
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.0/cutver-0.18.0-macos-x86_64.tar.gz"
      sha256 "1369e8ae2da14067064e2b5ea749c393ec97aa026f7872043dc19710445d1d79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cutver/cutver/releases/download/v0.18.0/cutver-0.18.0-linux-musl-x86_64.tar.gz"
      sha256 "e387c0cea73b2a3dbc9038ecc2da1f21ab3debc0630cf1a15fcf9400a8e28485"
    end
    on_arm do
      url "https://github.com/cutver/cutver/releases/download/v0.18.0/cutver-0.18.0-linux-musl-arm64.tar.gz"
      sha256 "1e4c0d67aab057edd645e864f361e858ee1fafb0ace31c5294101b3d78419c09"
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
