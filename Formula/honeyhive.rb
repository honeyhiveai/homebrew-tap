class Honeyhive < Formula
  desc "CLI for interacting with the HoneyHive REST API"
  homepage "https://github.com/honeyhiveai/honeyhive-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.7/honeyhive-1.0.0-rc.7-macos-arm64.tar.gz"
      sha256 "32900f622b31cb11b705bf6c89b4c7f3c82c7d2df81d65e9b2e60fb4d16250d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.7/honeyhive-1.0.0-rc.7-linux-arm64.tar.gz"
      sha256 "584d0d8b07f5749d4a3111704b97f973881c4eb81d5678b9bcdf48b235d4ed03"
    end

    on_intel do
      url "https://github.com/honeyhiveai/honeyhive-cli/releases/download/v1.0.0-rc.7/honeyhive-1.0.0-rc.7-linux-x64.tar.gz"
      sha256 "1610e635186f77be8315fbc10bb7a0bf8600c6f32d6cf277bc5eceb6b6ac6ae0"
    end
  end

  def install
    bin.install "honeyhive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honeyhive --version")
  end
end
