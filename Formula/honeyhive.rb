class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.6/honeyhive-1.0.0-rc.6-macos-arm64.tar.gz"
      sha256 "58f9d497f32cafe92d54c8e1d0429dacc60718191ddd474f68e10787fa5a6799"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.6/honeyhive-1.0.0-rc.6-linux-arm64.tar.gz"
      sha256 "d4ed9b6a0e1efd25ad132e363ec999c1b249c15b2443fd2ff15184df22c6d2bc"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.6/honeyhive-1.0.0-rc.6-linux-x64.tar.gz"
      sha256 "7ed63fbb7d1306edb44ed01b7a2f3a5892e6748ba6d79837b1f7624b3bcd6b04"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
